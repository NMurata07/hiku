class TopicU < ApplicationRecord
  validates :user_id, :text, presence: true
  
  belongs_to :user
  has_many :topic_ds
  has_many :favorites
end
