class FixQuestionTable < ActiveRecord::Migration
  def up
    change_table :questions do |t|
      t.rename :question, :content
      t.remove :question_vote_fields
      t.references :pool
    end
  end

  def down
    change_table :questions do |t|
      change_table :questions do |t|
        t.rename :content, :question
        t.string :question_vote_fields
        t.remove_references :pool
      end
    end
  end
end
