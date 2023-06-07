class Project < ApplicationRecord
  belongs_to :user
  include PgSearch::Model
  validates :title, presence: true
  validates :description, presence: true

  enum :type_of_mission, { internship: 0, job_offer: 1, peer_programming: 2, code_review: 3 }

  pg_search_scope :search_by_competences_and_users,
    against: [ :competences, :users ],
    using: {
      tsearch: { prefix: true }
   }
end
