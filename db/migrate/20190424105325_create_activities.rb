class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.integer :time

      t.timestamps
    end
  end
end
