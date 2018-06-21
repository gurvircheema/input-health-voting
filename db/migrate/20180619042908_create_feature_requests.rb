class CreateFeatureRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_requests do |t|
      t.string :name
      t.text :details
      t.integer :created_by_user_id
      t.integer :difficulty, default: 0

      t.timestamps
    end
  end
end
