require 'tesseract'
require 'base64'


class BusinessCardsController < ApplicationController
  #   include CarrierwaveBase64Uploader

  before_action :set_business_card, only: [:show, :edit, :update, :destroy]

  # GET /business_cards
  # GET /business_cards.json
  def index
    if current_user 
    @business_cards = current_user.business_cards
    else
    redirect_to new_sessions_path
    end
  end

  # GET /business_cards/1
  # GET /business_cards/1.json
  def show
  end

  # GET /business_cards/new
  def new
    if current_user 
      @business_card = BusinessCard.new
      @business_card.create_user = current_user
    else
    redirect_to new_sessions_path
    end
  end

  def edit

  end

  def create

    @business_card = BusinessCard.new(business_card_params)
    # #BEGIN ocr text extrtaction
    file = params[:business_card][:image].tempfile.path
    e = Tesseract::Engine.new { |e| e.language = :eng 
      e.blacklist = '|' 
      e.blacklist = '='
    }
    
    data = params[:business_card][:imageuri]
    image_data = Base64.decode64(data['data:image/png;base64,'.length .. -1])
      
    raw_text = e.text_for(image_data)

    @business_card.ocr_text = raw_text
  
    @business_card.create_user_id = current_user.id

    respond_to do |format|
      if @business_card.save
        # byebug  
        format.html { redirect_to business_card_path(id: @business_card.id)}
        format.json { render :show, status: :created, location: @business_card }
      else
        format.html { render :new }
        format.json { render json: @business_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_cards/1
  # PATCH/PUT /business_cards/1.json
  def update
    respond_to do |format|
      if @business_card.update(business_card_params)
        format.html { redirect_to business_cards_path }
        format.json { render :show, status: :ok, location: @business_card }
      else
        format.html { render :edit }
        format.json { render json: @business_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_cards/1
  # DELETE /business_cards/1.json
  def destroy
    @business_card.destroy
    respond_to do |format|
      format.html { redirect_to business_cards_url }
      format.json { head :no_content }
    end
  end

  def upload
    data = params[:data_uri]
    image_data = Base64.strict_decode64(data.gsub(' ', '+'))
    File.open("#{Rails.root}/public/uploads/business_card/test.png", 'wb') do |f|
      f.write image_data  
    end 
    render nothing: true, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_card
      @business_card = BusinessCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_card_params
      params.require(:business_card).permit(:name, :company, :job_title, :phone, :email, :company_address, :image, :ocr_text, :create_user_id, :imageuri, :company_website)
    end


end
