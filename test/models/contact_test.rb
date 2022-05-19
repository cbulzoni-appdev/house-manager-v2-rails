# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  company_name :string
#  contact_name :string
#  contact_type :string
#  email        :string
#  phone        :string
#  owner_id     :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
