class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :name
      t.string :location
      t.datetime :found_at
      t.string :contact

      t.timestamps
    end
  end
end
