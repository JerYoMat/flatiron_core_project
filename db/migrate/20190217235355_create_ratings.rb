class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :score 
      t.belongs_to :user 
      t.belongs_to :tip 
      t.text :score_reason #maybe swap out for comment class later
      t.timestamps
    end
  end
end
