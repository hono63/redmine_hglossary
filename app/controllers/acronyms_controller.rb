class AcronymsController < ApplicationController
  # ↓ Railsの参考
  # https://railsguides.jp/getting_started.html

  def index
    @acros = Acronyms.all
  end

  # model作成時の画面アクション
  def new
    @acro = Acronyms.new
  end

  # 実際にmodel作成するアクション
  def create
    # ↓これは ForbiddenAttributesError が出る。
    #@acro = Acronyms.new(params[:acronyms]) 
    # ↓これでも可能。
    #ac = params[:acronyms].permit(:acronym, :definition, :origin)
    #@acro = Acronyms.new(ac)
    # ↓これがrails公式のやり方。
    @acro = Acronyms.new(get_params)
  
    @acro.save
    redirect_to @acro
    # ↓ これはPOSTで何が送られているか表示するだけ。
    #render plain: params[:acronyms].inspect
  end

  # model詳細表示の画面アクション
  def show
    @acro = Acronyms.find(params[:id])
  end

  # model編集時の画面アクション
  def edit 
    @acro = Acronyms.find(params[:id])
  end

  # 実際にmodelをupdateするアクション
  def update
    @acro = Acronyms.find(params[:id])
  
    if @acro.update(get_params)
      redirect_to @acro
    else
      render 'edit'
    end
  end
  
  private
  def get_params
    params.require(:acronyms).permit(:acronym, :definition, :origin)
  end
end
