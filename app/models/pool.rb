class Pool < ActiveRecord::Base
  attr_accessible :finished, :event_id, :questions_attributes

  belongs_to :event
  has_many :questions

  accepts_nested_attributes_for :questions
end
