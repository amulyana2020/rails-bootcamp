class RemoveColumnBirthOfDateFromStudents < ActiveRecord::Migration[7.1]
  def change
    remove_column :students, :birth_of_date, :date
  end
end
