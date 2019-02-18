class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :title 
      t.string :link 
      t.string :resource_type
      t.string :time_requirement 
      t.text :other_info 
      t.belongs_to :user 
      t.timestamps
    end
  end
end
