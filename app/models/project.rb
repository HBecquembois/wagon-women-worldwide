class Project < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :requested_skills
  enum :type_of_mission, [:internship, :job_offer, :peer_programming, :code_review]

  MISSIONS = ["internship", "job offer", "peer programming", "code review"]
end
