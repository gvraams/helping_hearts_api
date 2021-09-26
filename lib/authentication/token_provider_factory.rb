module Authentication
  class TokenProviderFactory
    def self.get(type)
      case type
      when Authentication::Constants::JWT
        return Authentication::Impl::JWTTokenProvider.new
      else
        raise AuthenticationError, "#{type} token provider is invalid"
      end
    end
  end
end
