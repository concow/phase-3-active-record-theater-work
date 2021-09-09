class Audition < ActiveRecord::Base
    belongs_to :role

    def role
        return role
    end

    def call_back
        return self.hired = true
        self.save
    end
end