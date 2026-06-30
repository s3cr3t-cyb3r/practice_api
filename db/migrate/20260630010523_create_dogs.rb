class CreateDogs < ActiveRecord::Migration[8.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :color

      t.timestamps
    end
  end
end
