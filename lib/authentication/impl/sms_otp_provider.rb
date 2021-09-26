module Authentication::Impl
  class SMSOTPProvider < Authentication::Provider
    def authenticate(user_identifier, password_like)
      user = User.identified_by(user_identifier, password_like)
      raise AuthenticationError.new "Invalid user or password!" if user.nil?

      return user
    end
  end
end
