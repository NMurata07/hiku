class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :topic_us
  has_many :topic_ds
  has_many :favorites
  has_many :favorite_us, through: :favorites, source: 'topic_u'
  has_many :favorite_ds, through: :favorites, source: 'topic_d'
end
