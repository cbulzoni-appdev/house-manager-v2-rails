# == Schema Information
#
# Table name: appliances
#
#  id             :bigint           not null, primary key
#  appliance_type :string
#  category       :string
#  last_serviced  :date
#  make           :string
#  model          :string
#  notes          :text
#  service_due    :date
#  year           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  contact_id     :bigint           not null
#  house_id       :bigint           not null
#
# Indexes
#
#  index_appliances_on_contact_id  (contact_id)
#  index_appliances_on_house_id    (house_id)
#
# Foreign Keys
#
#  fk_rails_...  (contact_id => contacts.id)
#  fk_rails_...  (house_id => houses.id)
#
class Appliance < ApplicationRecord
  belongs_to :house
  belongs_to :contact
  has_one :owner, through: :house, source: :owner
end
