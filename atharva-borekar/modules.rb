module Action
    def jump
        @distance = rand(4) + 2
        puts "I jumped forward #{@distance} feet!"
    end
end

class Rabbit 
    include Action
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Cricket
    include Action
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

peter = Rabbit.new("Peter")
jimmy = Cricket.new("Jimmy")
peter.jump
jimmy.jump