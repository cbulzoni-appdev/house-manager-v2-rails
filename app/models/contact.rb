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
class Contact < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :appliances, dependent: :nullify
  has_many :projects, dependent: :nullify
  
end
