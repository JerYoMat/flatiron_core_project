class UnitsController < ApplicationController
    def index 
      @units = Unit.all 
    end 

    def show 
        @unit = Unit.find(params[:id])
        respond_to do |format|
          format.html 
          format.json { render json: @unit}
        end

    end 

    def slider_menu
      @units = Unit.all 
      render json: @units, status: 200
    end 
end
