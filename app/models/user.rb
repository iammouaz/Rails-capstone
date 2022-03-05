class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  has_many :groups, dependent: :destroy
  has_many :investments, dependent: :destroy
end
