class Question < ApplicationRecord
    def speed
        self.speed
    end

    def trivia
        self.intelligence
    end

    def invest
        self.durability + self.intelligence
    end

    def building
        self.strength
    end
end
