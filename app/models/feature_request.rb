class FeatureRequest < ApplicationRecord
  validates :name, presence: true
  belongs_to :created_by_user, class_name: 'User'
  has_many :requests

  def reset_counter
    update(
      upvotes: requests.upvote.count,
      downvotes: requests.downvotes.count
    )
  end
end
