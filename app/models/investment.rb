class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :name, presence: true
  validates :amount, presence: true
end
