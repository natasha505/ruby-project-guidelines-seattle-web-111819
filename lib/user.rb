class User < ActiveRecord::Base
    has_many :pgodexs
    has_many :pokemons, through: :pgodex
end 