# == Schema Information
#
# Table name: projects
#
#  id             :bigint           not null, primary key
#  date_completed :date
#  date_started   :date
#  description    :text
#  estimated_cost :float
#  notes          :text
#  priority       :string
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  contact_id     :bigint           not null
#  house_id       :bigint           not null
#
# Indexes
#
#  index_projects_on_contact_id  (contact_id)
#  index_projects_on_house_id    (house_id)
#
# Foreign Keys
#
#  fk_rails_...  (contact_id => contacts.id)
#  fk_rails_...  (house_id => houses.id)
#
class Project < ApplicationRecord
  belongs_to :house
  belongs_to :contact
  has_one :owner, through: :house
end
