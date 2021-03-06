class CreateCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_students, id: false do |t|
      t.integer :course_id, null: false
      t.integer :student_id, null: false
    end
    
    add_index :courses_students, [:course_id, :student_id], unique: true
  end
end
