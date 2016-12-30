class StudentClass < ActiveRecord::Base
  belongs_to :student, class_name: User, foreign_key: :student_id
  belongs_to :klass, foreign_key: :klass_id
end
