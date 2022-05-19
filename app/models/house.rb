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
class House < ApplicationRecord
  belongs_to :owner, class_name: "User", required: true
  has_many :appliances, dependent: :destroy
  has_many :projects, dependent: :destroy
end
