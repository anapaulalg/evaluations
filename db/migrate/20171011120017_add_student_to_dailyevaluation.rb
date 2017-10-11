class AddStudentToDailyevaluation < ActiveRecord::Migration[5.1]
  def change
    add_reference :dailyevaluations, :student, foreign_key: true
  end
end
