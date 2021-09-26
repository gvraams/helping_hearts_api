module Authentication
  class Provider
    def authenticate(user_identifier, password)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
