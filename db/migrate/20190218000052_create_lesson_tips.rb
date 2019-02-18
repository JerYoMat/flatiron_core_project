class CreateLessonTips < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_tips do |t|
      t.belongs_to :lesson 
      t.belongs_to :tip 
      t.timestamps
    end
  end
end
