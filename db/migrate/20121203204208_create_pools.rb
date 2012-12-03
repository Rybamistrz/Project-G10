class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.references :event
      t.boolean :finished

      t.timestamps
    end
  end
end
