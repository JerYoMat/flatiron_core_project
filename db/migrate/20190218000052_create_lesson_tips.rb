class CreateLessonTips < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_tips do |t|

      t.timestamps
    end
  end
end
