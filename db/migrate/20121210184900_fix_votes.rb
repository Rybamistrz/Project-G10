class FixVotes < ActiveRecord::Migration
  def up
    change_table :votes do |t|
      t.remove :vote_belongs_to_all
      t.remove :vote_belongs_to_profesors
      t.rename :vote_time, :voted_at
      t.integer :pool_id
      t.integer :question_id
      t.integer :user_id
    end
  end

  def down
    change_table :votes do |t|
      t.string :vote_belongs_to_all
      t.string :vote_belongs_to_profesors
      t.rename :voted_at, :vote_time
      t.remove :pool_id
      t.remove :question_id
      t.remove :user_id
    end
  end
end
