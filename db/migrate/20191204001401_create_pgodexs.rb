class CreatePgodexs < ActiveRecord::Migration[5.2]
  def change
    create_table :pgodexs do |t|
      t.integer :user_id
      t.integer :pokemon_id
    end 
  end
end
