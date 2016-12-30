class AddCourseIdFieldToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :course_id, :integer
  end
end
