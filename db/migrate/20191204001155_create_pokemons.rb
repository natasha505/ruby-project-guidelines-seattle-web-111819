class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :pokemon_id
      t.text :pokemon_name
      t.integer :max_cp
      t.text :types
    end 
  end
end
