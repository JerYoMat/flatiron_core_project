class UnitsController < ApplicationController
    def index 
        @unit = Unit.find(1)
    end 

    def show 
    end 
end
