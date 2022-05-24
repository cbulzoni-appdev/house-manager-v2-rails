# == Schema Information
#
# Table name: houses
#
#  id             :bigint           not null, primary key
#  city           :string
#  purchase_date  :date
#  state          :string
#  street_address :string
#  zip_code       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :bigint           not null
#
# Indexes
#
#  index_houses_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
require "test_helper"

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
