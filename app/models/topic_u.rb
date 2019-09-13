class TopicU < ApplicationRecord
  validates :user_id, :text, presence: true
  
  belongs_to :user
  has_many :topic_ds
  
  def self.favorite_us(topic_id)
    Favorite.find_by(topic_id: topic_id, topic_type: "above")
  end
end
