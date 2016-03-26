class AddBreedTypeToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :breed_type, :string
  end
end
