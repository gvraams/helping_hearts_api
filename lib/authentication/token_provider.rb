module Authentication
  class TokenProvider
    def generate(client_id, user_identifier, remember_me)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def get_user_identifier(bearer_token)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
