class Batch < ApplicationRecord
  has_many :students

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :start, presence: true
  validates :end, presence: true

  def random_student
    @batch = Batch.find(id)

    grades = ['bad', 'good', 'excellent']
    weights = [0.50, 0.33, 0.17]

    probabilities = weights.map { |w| (Float w) / weights.reduce(:+) }
    weighted_list = grades.zip(probabilities).to_h
    random_weighted_grade = weighted_list.max_by { |_, weight| rand ** (1.0 / weight) }.first

    students_with_randomed_grade = []

    @batch.students.each do |student|
      last_evaluation = student.dailyevaluations.order(:date).last

      if (last_evaluation && last_evaluation.evaluation == random_weighted_grade)
        students_with_randomed_grade.push(student)
      end
    end

    if (students_with_randomed_grade.length == 0)
      return @batch.students.sample
    end

    return students_with_randomed_grade.sample
  end
end
