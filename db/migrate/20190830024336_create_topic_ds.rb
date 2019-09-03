class CreateTopicDs < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_ds do |t|
      t.integer :user_id
      t.integer :topic_u_id
      t.string :text

      t.timestamps
    end
  end
end
