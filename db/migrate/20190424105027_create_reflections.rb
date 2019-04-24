class CreateReflections < ActiveRecord::Migration[5.1]
  def change
    create_table :reflections do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
