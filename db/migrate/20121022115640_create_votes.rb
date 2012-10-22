class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :vote_belongs_to_all
      t.string :vote_belongs_to_profesors
      t.time :vote_time

      t.timestamps
    end
  end
end
