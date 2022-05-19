# == Schema Information
#
# Table name: projects
#
#  id             :bigint           not null, primary key
#  description    :text
#  status         :string
#  date_started   :date
#  date_completed :date
#  notes          :text
#  priority       :string
#  estimated_cost :float
#  house_id       :bigint           not null
#  contact_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Project < ApplicationRecord
  belongs_to :house
  belongs_to :contact
  has_one :owner, through: :house
end
