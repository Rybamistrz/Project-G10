class Pool < ActiveRecord::Base
  attr_accessible :finished, :event_id, :questions_attributes

  belongs_to :event
  has_many :questions
  has_many :votes

  accepts_nested_attributes_for :questions

  def voted?(user)
    self.votes.where(user_id: user.id).count > 0
  end

  def chart_data
    results = []
    self.questions.each do |q|
      votes_count = self.votes.where(question_id: q.id).count
      results.push [ q.content, votes_count ]
    end

    results
  end
end
