class Role < ActiveRecord::Base 
    has_many :auditions

    def actors
        self.auditions.map(&:actor)     #self.auditions.map |audition| audition.actor
    end

    def locations
        self.auditions.map(&:location)
    end

    def lead
        #select from our auditions find firest that has true on it
        actor = self.auditions.find {|audition| audition.hired}
        if actor
            return actor
        else
            return "No actor has been hired"
        end
    end

    def understudy 
        actors = self.auditions.filter {|audition| audition.hired}
        if actors
            return actors[1]
        else
            return "No actor has been hired"
        end
    end
end