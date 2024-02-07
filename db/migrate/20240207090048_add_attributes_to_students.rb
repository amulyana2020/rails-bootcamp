class AddAttributesToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :date_of_birth, :date
    add_column :students, :address, :string
    add_column :students, :contact, :string
  end
end
