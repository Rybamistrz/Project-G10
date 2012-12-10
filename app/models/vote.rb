class Vote < ActiveRecord::Base
  attr_accessible :voted_at, :user_id, :pool_id, :question_id

  validates_uniqueness_of :pool_id, scope: :user_id
end

