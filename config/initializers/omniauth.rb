OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '541910489481699', '87fcf23ea45e0157730ecc39bf39f86a'
end


#OmniAuth.config.logger = Rails.logger