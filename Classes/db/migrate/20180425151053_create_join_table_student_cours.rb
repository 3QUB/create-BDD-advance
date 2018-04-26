class CreateJoinTableStudentCours < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :cours do |t|
      t.index :student_id
      t.index :cour_id
    end
  end
end
