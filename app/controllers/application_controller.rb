class ApplicationController < ActionController::API
  protect_from_forgery with: :exception, prepend: true
end
