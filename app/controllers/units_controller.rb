class UnitsController < ApplicationController
    def index 
      @units = Unit.all 
    end 

    def show 
      @units = Unit.all #temp to check render
        @unit = Unit.find(params[:id])
        @topics = @unit.topics
        @lessons = @unit.lessons
    end 
end
