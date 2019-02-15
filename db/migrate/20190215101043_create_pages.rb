class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer :user_id
      t.string :name
      t.timestamps
    end
  end
end
