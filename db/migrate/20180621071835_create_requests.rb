class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :user
      t.references :feature_request
      t.boolean :upvote
      t.timestamps
    end
  end
end
