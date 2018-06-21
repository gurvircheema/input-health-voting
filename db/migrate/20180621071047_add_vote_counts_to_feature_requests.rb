class AddVoteCountsToFeatureRequests < ActiveRecord::Migration[5.1]
  def change
    change_table :feature_requests do |t|
      t.integer :upvotes, null: false, default: 0
      t.integer :downvotes, null: false, default: 0
    end
  end
end
