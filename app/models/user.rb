class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :Username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  belongs_to :departments, class_name: 'ActivDepartment', foreign_key: 'department_id'
  has_many :projects, foreign_key: 'department_id' # , class_name: 'Projects'
end
