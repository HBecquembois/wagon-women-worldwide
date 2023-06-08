class Project < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :requested_skills
end
