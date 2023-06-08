class User < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor

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
    against: [:first_name,:title,:last_name],
    using: {
      tsearch: { prefix: true }
    },
    associated_against: {
      base_tags: [:name]
    }
end

