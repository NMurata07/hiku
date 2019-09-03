class TopicD < ApplicationRecord
  validates :user_id, :topic_u_id, :text, presence: true
  
  belongs_to :user
  belongs_to :topic_u
  has_many :favorites
end
