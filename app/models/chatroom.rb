class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user_a, class_name: 'User', foreign_key: :user_a_id
  belongs_to :user_b, class_name: 'User', foreign_key: :user_b_id

  def interlocutor(user)
    user == user_a ? user_b : user_a
  end
end
