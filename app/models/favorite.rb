class Favorite < ApplicationRecord
  belongs_to :user
  
  def topic
    if self.topic_type == "above"
      TopicU.find_by(id: self.topic_id)
    else
      TopicD.find_by(id: self.topic_id)
    end
  end
end
