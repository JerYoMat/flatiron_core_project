class CreateTopicTips < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_tips do |t|
      t.belongs_to :topic 
      t.belongs_to :tip
    end
  end
end
