class AddColumnBodToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :bod, :date
  end
end

