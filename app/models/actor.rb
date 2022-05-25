class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    # def characters
    #     self.characters.all
    # end

    # def shows
    #     self.shows.all
    # end

    ### Above two methods are not needed because the 
    ### two methods above does these custom methods for us

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end


end