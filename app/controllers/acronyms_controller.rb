class AcronymsController < ApplicationController

  def index
    @acronyms = Acronyms.all
  end

  def new
    @acronyms = Acronyms.new
  end

  def show
  end

  def edit 
  end
end
