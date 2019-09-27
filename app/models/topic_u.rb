class TopicU < ApplicationRecord
  validates :user_id, :text, presence: true
  
  belongs_to :user
  has_many :topic_ds
  
  def favorite_us_ids
    Favorite.where(topic_id: self.id, topic_type: "above").pluck(:user_id)
  end
end
