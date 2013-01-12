class Posts < ActiveRecord::Base
  attr_accessible :content, :dateAndTime, :id, :postStatus, :threadId, :userId
end
