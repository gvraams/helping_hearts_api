# Sets UUID before record creation
module SetPrimaryKey
  require 'securerandom'

  extend ActiveSupport::Concern

  def self.included(base)
    base.class_eval do
      validates :id, presence: true

      before_validation :set_uuid_primary_key, on: :create
    end

    def set_uuid_primary_key
      self.id = SecureRandom.uuid unless self.id.present?
    end
  end
end
