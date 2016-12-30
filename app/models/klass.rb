class Klass < ActiveRecord::Base
  has_many :student_classes, foreign_key: :klass_id
  has_many :student, class_name: User, through: :student_classes, foreign_key: :klass_id
  belongs_to :teacher, class_name: User, foreign_key: :teacher_id
  belongs_to :course
end
