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
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  owner_id     :bigint           not null
#
# Indexes
#
#  index_contacts_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
require "test_helper"

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
