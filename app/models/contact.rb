class Contact < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :appliances, dependent: :nullify
  has_many :projects, dependent: :nullify
  
end
