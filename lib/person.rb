# your code goes here
class Person

    attr_reader :hygiene, :happiness, :name
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happiness=(new_score)
        if new_score >= 10
            @happiness = 10
        elsif new_score <= 0
            @happiness = 0
        else
            @happiness = new_score
        end
    end

    def hygiene=(new_score)
        if new_score >= 10
            @hygiene = 10
        elsif new_score <= 0
            @hygiene = 0
        else
            @hygiene = new_score
        end
    end

    def change_bank_account(dollars)
        @bank_account += dollars
    end

    def clean?
       hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(salary)
        self.change_bank_account(salary)
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene -3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness=(friend.happiness + 3)
        self.happiness=(@happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(starter, topic)
        if topic == "politics"
            starter.happiness=(starter.happiness - 2)
            self.happiness=(@happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            starter.happiness=(starter.happiness + 1)
            self.happiness=(@happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
