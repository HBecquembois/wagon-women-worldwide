class User < ApplicationRecord
  include PgSearch::Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects

  acts_as_taggable_on :competences, :languages, :mentor_skills
  validates :last_name, presence: true
  validates :first_name, presence: true
end

