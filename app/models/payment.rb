class Payment < ApplicationRecord
  belongs_to :account
  belonts_to :father, though: :account, optional: true
  belonts_to :mother, though: :account, optional: true
  has_many :tickets
end
