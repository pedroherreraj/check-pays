class Ticket < ApplicationRecord
  belongs_to :student
  belongs_to :payment
end
