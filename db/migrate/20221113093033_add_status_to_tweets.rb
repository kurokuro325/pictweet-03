class AddStatusToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :status, :integer, default: 0, null: false
  end
end
