class User < ApplicationRecord
  include PgSearch::Model
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :messages, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :chatrooms, ->(user) { unscope(where: :user_id).where("chatrooms.user_a_id = :id OR chatrooms.user_b_id = :id", id: user.id) }, class_name: 'Chatroom', dependent: :destroy
  validates :last_name, presence: true
  validates :first_name, presence: true
  acts_as_taggable_on :competences, :languages, :mentor_skills
  acts_as_favoritable
  acts_as_favoritor
  pg_search_scope :search_by_competences_and_users,
                  against: [:first_name,:title,:last_name],
                  using: {
                    tsearch: { prefix: true }
                  },
                  associated_against: {
                    projects: [:title, :description],
                    base_tags: [:name]
                  }

  LANGUAGES = ["french", "german", "italian", "english", "greek", "russian", "japanese", "portugese", "esperanto", "vietnamese", "wolof"]
  COUNTRIES = User.all.map(&:country).uniq

  def chatroom_with(another_user)
    Chatroom.where(user_a: self, user_b: another_user).or(Chatroom.where(user_b: self, user_a: another_user)).first
  end
end
