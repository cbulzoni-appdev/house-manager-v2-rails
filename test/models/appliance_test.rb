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
require "test_helper"

class ApplianceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
