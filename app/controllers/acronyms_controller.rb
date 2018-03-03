class AcronymsController < ApplicationController
  unloadable

  def index
    @acronyms = Acronyms.all
  end

  def new
  end

  def show
  end

  def edit
    acro = Acronyms.find(params[:id])
    acro.vote(params[:answer])
    if acro.save
      flash[:notice] = 'Vote saved.'
    end
    redirect_to :action => 'index'
  end
end
