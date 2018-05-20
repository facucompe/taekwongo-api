class AuthenticationTokenManager
  class << self
    def encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    # rubocop:disable Lint/RescueWithoutErrorClass
    def decode(token)
      payload = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      AuthenticationDecodedToken.new(payload)
    rescue
      nil
    end
    # rubocop:enable Lint/RescueWithoutErrorClass
  end
end
