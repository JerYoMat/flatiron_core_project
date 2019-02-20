class UnitsController < ApplicationController
    def index 
      @units = Unit.all 
    end 

    def show 
        @unit = Unit.find(params[:id])
        @topics = @unit.topics
        @lessons = @unit.lessons
    end 

    def slider_menu
      @units = Unit.all 
      render json: @units, status: 200
    end 
end
