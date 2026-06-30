class CreateTeachers < ActiveRecord::Migration[8.1]
  def change
    create_table :teachers do |t|
      t.integer :grade
      t.string :subject

      t.timestamps
    end
  end
end
