class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :code_number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
