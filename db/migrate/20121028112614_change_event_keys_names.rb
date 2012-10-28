class ChangeEventKeysNames < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.rename :event_name, :name
      t.rename :event_description, :description
      t.rename :event_localization, :place
      t.date   :begin_at
    end
  end

  def down
    change_table :events do |t|
      t.rename :name, :event_name
      t.rename :description, :event_description
      t.rename :place, :event_localization
      t.remove :begin_at
    end
  end
end
