class Chatroom < ApplicationRecord
  has_many :messages
  belong_to :user_a, class_name: 'User', foreign_key: :user_a_id
  belong_to :user_b, class_name: 'User', foreign_key: :user_b_id
end
