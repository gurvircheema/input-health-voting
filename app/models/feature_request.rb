class FeatureRequest < ApplicationRecord

  validates :created_by_user_id, presence: true
end
