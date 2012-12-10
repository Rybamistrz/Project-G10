class Pool < ActiveRecord::Base
  attr_accessible :finished, :event_id, :questions_attributes

  belongs_to :event
  has_many :questions
  has_many :votes

  accepts_nested_attributes_for :questions

  def voted?(user)
    self.votes.where(user_id: user.id).any?
  end
end
