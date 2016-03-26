class RemoveBlendFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :blend, :boolean
  end
end
