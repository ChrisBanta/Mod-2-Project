Superhero.destroy_all
Question.destroy_all



for i in(1..731) do
    # x = rand(1..731)

    data = RestClient.get "https://www.superheroapi.com/api.php/10222711255430098/#{i}"
        json = JSON.parse(data)
        # json.each do |result|
            Superhero.create(name:json['name'], fullname:json['biography']['full-name'], 
            occupation:json['work']['occupation'], picture:json['image']['url'], 
            intelligence:json['powerstats']['intelligence'], 
            strength:json['powerstats']['strength'], speed:json['powerstats']['speed'],
            durability:json['powerstats']['durability'], power:json['powerstats']['power'], 
            combat:json['powerstats']['combat'],)

    
end  

Question.create(number: 1, 
                text: "Who wins in a race?", 
                formula: "Proc.new{|players| players.map(&:speed).max}")
                
# Question.create(number: 2, 
#                 text: "Who would you want as a trivia partner?", 
#                 formula: Proc.new{|players| players.map(&:intelligence).max})

# Question.create(number: 3, 
#                 text: "If you were to invest in the future of one of these heroes, which would it be?", 
#                 formula: Proc.new{|players| (players.map(&:durability) + players.map(&:intelligence)).max})

# Question.create(number: 4, 
#                 text: "If a bear attacked you, who would you want by your side?", 
#                 formula: Proc.new{|players| players.map(&:speed).min})

# Question.create(number: 5, 
#                 text: "If you needed to, let’s say, leap a tall building in a single bound, who could help you with that?", 
#                 formula: Proc.new{|players| players.map(&:strength)})

# Question.create(number: 6, text: , formula: )
# Question.create(number: 7, text: , formula: )
# Question.create(number: 8, text: , formula: )
# Question.create(number: 9, text: , formula: )
# Question.create(number: 10, text: , formula: )
# Question.create(number: 11, text: , formula: )
# Question.create(number: 12, text: , formula: )
# Question.create(number: 13, text: , formula: )
# Question.create(number: 14, text: , formula: )
# Question.create(number: 15, text: , formula: )
# Question.create(number: 16, text: , formula: )
# Question.create(number: 17, text: , formula: )