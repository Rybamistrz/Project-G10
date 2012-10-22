class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :question_vote_fields

      t.timestamps
    end
  end
end
