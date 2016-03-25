Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "339812852837-hubkert172ja83i7d75aic6fvni0uq2u.apps.googleusercontent.com", "_1r8Gh_nI0wVoqu4lbkfuVxA", {
      :scope => "email, profile, calendar", 
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50,
      skip_jwt: true
    }
end