class Appliance < ApplicationRecord
  belongs_to :house
  belongs_to :contact
  has_one :owner, through: :house, source: :owner
end
