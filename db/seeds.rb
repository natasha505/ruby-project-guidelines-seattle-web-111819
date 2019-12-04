require 'json'
require 'rest-client'

Pokemon.destroy_all
Pokemon.reset_pk_sequence


url_cp = "https://pokemon-go1.p.rapidapi.com/pokemon_max_cp.json"
url_type = "https://pokemon-go1.p.rapidapi.com/pokemon_types.json" 

 pokemon_max_cp = RestClient::Request.execute(method: :get, 
    url: url_cp, 
    headers:{
    "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
    "X-RapidAPI-Key" => "5db3651e50msha9aec845d0458d1p1c2eefjsn7a066cc59d05"
  })

pokemon_types = RestClient::Request.execute(method: :get,
    url: url_type, 
    headers:{
    "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
    "X-RapidAPI-Key" => "5db3651e50msha9aec845d0458d1p1c2eefjsn7a066cc59d05"
  })
  

json_max_cp = JSON.parse(pokemon_max_cp)
json_types = JSON.parse(pokemon_types)
mrg = []
json_max_cp.each do |el1|
  json_types.each do |el2|
    if el2['pokemon_id'] == el1['pokemon_id'] && el2['form'] == el1['form']
      mrg.push(el1.merge(el2))
    end
  end
end


mrg = mrg.uniq{|x| x['pokemon_name']}
mrg.each do |pokemon|
     Pokemon.create(pokemon_id: pokemon["pokemon_id"], pokemon_name: pokemon["pokemon_name"], max_cp: pokemon["max_cp"], types: pokemon["type"].map { |i| i.to_s }.join(", "))
end