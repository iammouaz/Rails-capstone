class Group < ApplicationRecord
  belongs_to :user
  has_many :group_investments
  has_many :investments, through: :group_investments
end
