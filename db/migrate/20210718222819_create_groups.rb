class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.date :debut_date
      t.integer :group_type
      t.integer :cast

      t.timestamps
    end
  end
end
