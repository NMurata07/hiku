class TopicD < ApplicationRecord
  validates :user_id, :topic_u_id, :text, presence: true
  
  belongs_to :user
  belongs_to :topic_u
  
  def favorite_ds_ids
    Favorite.where(topic_id: self.id, topic_type: "lower").pluck(:user_id)
  end
end
