class Network < ActiveRecord::Base
  belongs_to :show

    # def shows
    #     self.show.all
    # end

    ### This is not needed because the belongs_to :show 
    ###  above takes care of this custom method

    def sorry
        "We're sorry about passing on John Mulaney's pilot."
    end

end
