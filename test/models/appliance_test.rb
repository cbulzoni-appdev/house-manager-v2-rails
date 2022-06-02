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
#  contact_id     :bigint
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
require "test_helper"

class ApplianceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
