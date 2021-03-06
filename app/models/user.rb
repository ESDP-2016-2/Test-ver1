class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_organizations
  has_many :organizations, :through => :user_organizations
  has_many :posts

  validates :name, presence: true, length: {maximum: 60}
end
