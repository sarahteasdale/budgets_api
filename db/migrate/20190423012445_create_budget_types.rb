class CreateBudgetTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_types do |t|
      t.string :budgetType
      t.date :start_date
      t.date :end_date
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
