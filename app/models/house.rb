class House < ApplicationRecord
  belongs_to :owner, class_name: "User", required: true
  has_many :appliances, dependent: :destroy
  has_many :projects, dependent: :destroy
end
