class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.text :name
      t.string :sex
      t.boolean :multiplication
      t.float :bodyLength
      t.integer :molt
      t.date :buyDate
      t.boolean :status

      t.timestamps null: false
    end
  end
end
