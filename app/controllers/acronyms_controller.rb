class AcronymsController < ApplicationController

  def index
    @acros = Acronyms.all
  end

  def new
    @acro = Acronyms.new
  end

  def create
  #@acro = Acronyms.new(params[:acronyms]) # <=これは何故か ForbiddenAttributesError が出る。
  #ac = params[:acronyms].permit(:acronym, :definition, :origin)
  #@acro = Acronyms.new(ac)
  @acro = Acronyms.new(get_params)
 
  @acro.save
  redirect_to @acro
  # ↓ これはPOSTで何が送られているか表示する。
  #render plain: params[:acronyms].inspect
  end

  def show
    @acro = Acronyms.find(params[:id])
  end

  def edit 
    @acro = Acronyms.find(params[:id])
  end

  private
  def get_params
    params.require(:acronyms).permit(:acronym, :definition, :origin)
  end
end
