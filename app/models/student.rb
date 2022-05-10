class Student < ApplicationRecord
  belongs_to :father, optional: true
  belongs_to :mother, optional: true
  has_many :tickets
end
