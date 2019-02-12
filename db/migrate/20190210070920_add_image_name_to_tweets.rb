class AddImageNameToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :image_name, :string
  end
end
