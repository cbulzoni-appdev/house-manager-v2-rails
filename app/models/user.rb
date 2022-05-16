class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :houses, foreign_key: :owner_id, dependent: :destroy
  has_many :projects, through: :houses
  has_many :appliances, through: :houses
  has_many :contacts, foreign_key: :owner_id, dependent: :destroy
end
