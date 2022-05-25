class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

    # def characters
    #     self.actors
    # end

    # def network
    #     self.networks
    # end

    ### Above two methods are not needed because the 
    ### two methods above does these custom methods for us

    def actors_list
        self.actors.map do |actor|
            actor.full_name
        end
    end


end