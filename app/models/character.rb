class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    # def actor
    #     self.actor
    # end

    # def show
    #     self.show
    # end
    ### Above two methods are not needed because the 
    ### two methods above does these custom methods for us

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

end