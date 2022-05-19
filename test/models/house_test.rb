# == Schema Information
#
# Table name: houses
#
#  id             :bigint           not null, primary key
#  street_address :string
#  city           :string
#  state          :string
#  zip_code       :string
#  purchase_date  :date
#  owner_id       :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
