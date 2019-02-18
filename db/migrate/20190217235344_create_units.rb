class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :title 
      t.integer :course_order 
      t.string :image_path
      t.timestamps
    end
  end
end
