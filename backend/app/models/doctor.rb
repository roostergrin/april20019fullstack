class Doctor < ApplicationRecord
  belongs_to :practice
  has_many :patients
end
