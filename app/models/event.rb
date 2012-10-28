class Event < ActiveRecord::Base
  attr_accessible :description, :place, :name, :begin_at
end
