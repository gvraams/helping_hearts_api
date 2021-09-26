class UsersController < Api::V1::Base
  skip_before_action :authenticated_request?, :only => [:signup, :signin]

  # TODO: Implement signup flow
  def signup
  end

  # TODO: Implement signin flow
  def signin
  end

  # TODO: Implement update user
  def update
  end

  # TODO: Implement delete user
  def destroy
  end
end
