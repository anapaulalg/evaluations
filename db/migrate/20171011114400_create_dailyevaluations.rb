class CreateDailyevaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :dailyevaluations do |t|
      t.string :evaluation
      t.date :date
      t.text :remark

      t.timestamps
    end
  end
end
