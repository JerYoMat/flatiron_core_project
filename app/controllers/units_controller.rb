class UnitsController < ApplicationController
    def index 
       num = rand(1..14)
        @unit = Unit.find(num)
    end 

    def show 
    end 
end
