# == Schema Information
#
# Table name: appliances
#
#  id            :bigint           not null, primary key
#  category      :string
#  type          :string
#  make          :string
#  model         :string
#  year          :integer
#  last_serviced :date
#  service_due   :date
#  notes         :text
#  house_id      :bigint           not null
#  contact_id    :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Appliance < ApplicationRecord
  belongs_to :house
  belongs_to :contact
  has_one :owner, through: :house, source: :owner
end
