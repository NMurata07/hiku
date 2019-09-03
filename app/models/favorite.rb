class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :topic_u
  belongs_to :topic_d
end
