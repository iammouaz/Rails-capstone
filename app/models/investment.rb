class Investment < ApplicationRecord
  belongs_to :user
  has_many :group_investments
  has_many :groups, through: :group_investments
end
