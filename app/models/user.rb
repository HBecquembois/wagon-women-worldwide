class User < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor

  def chatroom_with(another_user)
    Chatroom.where(user_a: self, user_b: another_user).or(Chatroom.where(user_b: self, user_a: another_user)).first
  end

  include PgSearch::Model

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
    has_many :projects


    acts_as_taggable_on :competences, :languages, :mentor_skills
    validates :last_name, presence: true
    validates :first_name, presence: true
    has_one_attached :photo

    pg_search_scope :search_by_competences_and_users,
    against: [:first_name, :title],
    using: {
      tsearch: { prefix: true }
    },
    associated_against: {
      base_tags: [:name]
    }
end
