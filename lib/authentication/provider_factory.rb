module Authentication
  class ProviderFactory
    def self.get(type)
      case type
      when Authentication::Constants::SMS_OTP
        Authentication::Impl::SMSOTPProvider.new
      else
        raise StandardError, "#{type} provider is invalid"
      end
    end
  end
end
