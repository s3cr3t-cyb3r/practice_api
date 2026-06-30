class CreateStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :students do |t|
      t.integer :grade
      t.string :name

      t.timestamps
    end
  end
end
