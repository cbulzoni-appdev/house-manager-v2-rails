class Appliance < ApplicationRecord
  belongs_to :house
  belongs_to :contact
end
