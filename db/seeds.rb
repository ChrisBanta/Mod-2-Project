Superhero.destroy_all



for i in(1..10) do

    data = RestClient.get "https://www.superheroapi.com/api.php/xxxxxxxxxxxxxxxx/#{i}"
        json = JSON.parse(data)
        # json.each do |result|
            Superhero.create(name:json['name'], fullname:json['biography']['full-name'], 
            occupation:json['work']['occupation'], picture:json['image']['url'], 
            intelligence:json['powerstats']['intelligence'], 
            strength:json['powerstats']['strength'], speed:json['powerstats']['speed'],
            durability:json['powerstats']['durability'], power:json['powerstats']['power'], 
            combat:json['powerstats']['combat'],)

    
end  