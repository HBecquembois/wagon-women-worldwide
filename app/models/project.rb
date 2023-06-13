class Project < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :requested_skills
  enum :type_of_mission, [:internship, :job_offer, :peer_programming, :code_review]

  # pg_search_scope :search_by_title_and_description,
  # against: [:title, :description],
  # using: {
  #   tsearch: { prefix: true }
  # }
end
