Superhero.destroy_all
Question.destroy_all



for i in(1..731) do
    # x = rand(1..731)

    data = RestClient.get "https://www.superheroapi.com/api.php/xxxxxxxxxxxxxxxxx/#{i}"
        json = JSON.parse(data)
        # json.each do |result|
            Superhero.create(name:json['name'], fullname:json['biography']['full-name'], 
            occupation:json['work']['occupation'], picture:json['image']['url'], 
            intelligence:json['powerstats']['intelligence'], 
            strength:json['powerstats']['strength'], speed:json['powerstats']['speed'],
            durability:json['powerstats']['durability'], power:json['powerstats']['power'], 
            combat:json['powerstats']['combat'],)

    
end  

Question.create(number: 1, text: "Who wins in a race?")
                

Question.create(number: 2, text: "Who would you want as a trivia partner?")

Question.create(number: 3, text: "If you were to invest in the future of one of these heroes, which would it be?")

Question.create(number: 4, text: "If a bear attacked you, who would you want by your side?")

Question.create(number: 5, text: "If you needed to, let’s say, leap a tall building in a single bound, who could help you with that?")

Question.create(number: 6, text: "Who is most likely to reveal her secret identity?")
