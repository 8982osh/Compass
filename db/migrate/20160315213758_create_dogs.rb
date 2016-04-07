class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :animal_id
      t.string :name
      t.string :gender
      t.integer :weight
      t.string :age
      t.string :breed_primary
      t.string :breed_secondary
      t.boolean :purebreed
      t.boolean :blend
      t.string :cat_compatibility
      t.string :dog_compatibility
      t.string :human_compatibility
      t.string :energy_level
      t.string :temperament
      t.integer :fee
      t.text :description

      t.timestamps null: false
    end
  end
end
