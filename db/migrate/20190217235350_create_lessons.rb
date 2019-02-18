class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title 
      t.integer :course_order 
      t.string :content 
      t.belongs_to :topic 
      t.belongs_to :unit 
      t.timestamps
    end
  end
end
