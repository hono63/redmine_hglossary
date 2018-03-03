class AcronymsController < ApplicationController

  def index
    @acros = Acronyms.all
  end

  def new
    @acro = Acronyms.new
  end

  def create
    @acro = Acronyms.new(acronym_params)
    @acro.save
    redirect_to @acro
  end

  def show
  end

  def edit 
  end
end
