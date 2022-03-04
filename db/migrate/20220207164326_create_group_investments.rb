class CreateGroupInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :group_investments do |t|
      t.references :group, null: false, foreign_key: true
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
