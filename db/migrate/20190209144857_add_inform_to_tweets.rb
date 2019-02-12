class AddInformToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :inform, :text
  end
end
