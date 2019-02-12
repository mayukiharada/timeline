class AddYearToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :year, :text
  end
end
