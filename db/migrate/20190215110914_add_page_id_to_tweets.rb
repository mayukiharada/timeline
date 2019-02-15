class AddPageIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :page_id, :integer
  end
end
