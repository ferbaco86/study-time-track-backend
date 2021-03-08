class ApplicationController < ActionController::API
  def encode_token
    JWT.encode(payload, 'secret')
  end
end
