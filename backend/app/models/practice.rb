class Practice < ApplicationRecord
  has_many :locations
  has_many :doctors
  has_many :patients, through: :doctors
end
