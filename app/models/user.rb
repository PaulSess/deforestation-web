class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :Username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  belongs_to :department
  has_many :projects, through: :departments
end
