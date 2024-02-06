class RenameColumnBodInStudents < ActiveRecord::Migration[7.1]
  def change
    rename_column :students, :bod, :birth_of_date
  end
end
