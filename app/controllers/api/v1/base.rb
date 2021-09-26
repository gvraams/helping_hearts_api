class Api::V1::Base < ApplicationController
  before_action :authenticated_request?

  private

  # TODO: Implement JWT authentication
  def authenticated_request?
    true
  end
end
