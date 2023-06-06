class Project < ApplicationRecord
  belongs_to :user
  include PgSearch::Model

  pg_search_scope :search_by_competences_and_users,
    against: [ :competences, :users ],
    using: {
      tsearch: { prefix: true }
   }
end
