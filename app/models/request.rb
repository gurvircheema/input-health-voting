class Request < ApplicationRecord
  belongs_to :user
  belongs_to :feature_request
  scope :upvotes, -> { where(upvote: true) }
  scope :downvote, -> { where(upvote: false) }

  validates :user_id, uniqueness: { scope: :feature_request_id }

  after_create do
    FeatureRequest.increment_counter(feature_request_column, feature_request.id)
  end

  after_update do
    if saved_change_to_attribute?(:upvote)
      FeatureRequest.increment_counter(feature_request_column, feature_request.id)
      FeatureRequest.decrement_counter(inverse_feature_request_column, feature_request.id)
    end
  end

  private

  def feature_request_column
    upvote? ? :upvotes : :downvotes
  end

  def inverse_feature_request_column
    upvote? ? :downvotes : :upvotes
  end
end
