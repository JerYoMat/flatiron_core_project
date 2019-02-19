class StaticPagesController < ApplicationController
  def home
    @units = Unit.all
  end

  def code_of_conduct
  end

  def acknowledgements
  end

  def about 
  end 
end
