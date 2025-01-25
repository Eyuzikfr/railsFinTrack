class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :income_details
      t.float :income_amount
      t.string :expenditure_details
      t.float :expenditure_amount
      t.string :expenditure_category

      t.timestamps
    end
  end
end
