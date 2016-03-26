class RemovePurebreedFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :purebreed, :boolean
  end
end
