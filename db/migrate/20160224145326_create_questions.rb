class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_content
      t.belongs_to :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
