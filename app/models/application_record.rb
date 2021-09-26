class ApplicationRecord < ActiveRecord::Base
  include SetPrimaryKey

  self.abstract_class = true
end
