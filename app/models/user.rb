class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :topic_us
  has_many :topic_ds
  has_many :favorites
  
  def self.favorite(topic_id, user_id, topic_type)
    if topic_type == "above"
      TopicU.find_by(id: topic_id, user_id: user_id)
    else
      TopicD.find_by(id: topic_id, user_id: user_id)
    end
  end
end
