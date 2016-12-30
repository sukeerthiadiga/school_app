class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.integer :student_id
      t.integer :klass_id
      t.integer :time

      t.timestamps null: false
    end
  end
end
