class Event < ActiveRecord::Base
  attr_accessible :description, :place, :name, :begin_at

  validates_presence_of :name, :begin_at

  has_one :pool
end
