class Vote < ActiveRecord::Base
  attr_accessible :vote_belongs_to_all, :vote_belongs_to_profesors, :vote_time
end
