class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :topic_id
      t.string :topic_type
      t.timestamps
    end
  end
end
