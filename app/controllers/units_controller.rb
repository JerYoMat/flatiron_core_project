require 'pry'
class UnitsController < ApplicationController
    def index 
      @units = Unit.all 
    end 

    def setup_unit
     @unit = Unit.find(params[:id])
     render json: @unit
    end 

    def create  
      @unit = Unit.new
   
      @unit.title = params["title"]
      @unit.course_order = params["courseOrder"]
      @unit.image_path = params["imageName"]
      if @unit.save
        render json: @unit
      end 

    end 

    def show 
        @unit = Unit.find(params[:id])
        respond_to do |format|
          format.html 
          format.json { render json: @unit}
        end
    end 
    def unit_max_min
      @count = { "max": Unit.all.max.id,
                  "min": Unit.all.min.id }
      render json: @count
    end 

    def slider_menu
      @units = Unit.all 
      render json: @units, status: 200
    end 
end
