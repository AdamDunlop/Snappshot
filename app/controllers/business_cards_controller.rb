require 'tesseract'
 

class BusinessCardsController < ApplicationController

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
    # @business_card
  end

  # GET /business_cards/new
  def new
    if current_user 
    @business_card = BusinessCard.new
    else
    redirect_to new_sessions_path
    end
  end

  # GET /business_cards/1/edit
  def edit

  end

  # POST /business_cards
  # POST /business_cards.json
  def create

    @business_card = BusinessCard.new(business_card_params)
    # #BEGIN ocr text extrtaction

    file = params[:business_card][:image].tempfile.path
    e = Tesseract::Engine.new { |e| e.language = :eng 
      e.blacklist = '|' 
      e.blacklist = '='
    }
    raw_text = e.text_for(file)

    # byebug
    @business_card.ocr_text = raw_text
  
    # #END

    @business_card.create_user_id = current_user.id
    respond_to do |format|
      if @business_card.save
        # byebug
        format.html { redirect_to business_card_path(id: @business_card.id),  notice: 'Business card was successfully created.' }
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
        format.html { redirect_to business_cards_path, notice: 'Business card was successfully updated.' }
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
      format.html { redirect_to business_cards_url, notice: 'Business card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_card
      @business_card = BusinessCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_card_params
      params.require(:business_card).permit(:name, :company, :job_title, :phone, :email, :company_address, :image, :ocr_text, :create_user_id)
    end


end
