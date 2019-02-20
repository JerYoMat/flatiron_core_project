class StaticPagesController < ApplicationController
  def home
    @units = Unit.all
  end

  def slider
    @units = Unit.all
    render json: @units, status: 200
  end 
  def code_of_conduct
  end

  def acknowledgements
  end

  def about 
  end 
end
