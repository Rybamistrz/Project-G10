class Question < ActiveRecord::Base
  attr_accessible :content, :pool_id

  belongs_to :pool
end
