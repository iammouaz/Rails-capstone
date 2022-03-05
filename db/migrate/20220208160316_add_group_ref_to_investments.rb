class AddGroupRefToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_reference :investments, :group, null: false, foreign_key: true
  end
end
