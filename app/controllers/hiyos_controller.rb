class HiyosController < ApplicationController
  before_action :set_hiyo, only: [:edit,:update,:destroy]
  
  def index
    @hiyo = Hiyo.new
    @hiyos = Hiyo.all
  end
  
  def create
    @hiyo = Hiyo.new(hiyos_params)
    if @hiyo.save
      redirect_to hiyos_path, notice: "ひよった！"
    else
      render action: "new"
    end
  end

  def new
    if params[:back]
      @hiyo = Hiyo.new(hiyos_params)
    else
      @hiyo = Hiyo.new
    end
  end
  
  def edit
  end
  
  def update
    @hiyo.update(hiyos_params)
    redirect_to hiyos_path, notice: "ひよりなおした！"
  end
  
  def destroy
    @hiyo.destroy
    redirect_to hiyos_path, notice: "ひよってなんかいなかった！"
  end
  
  def confirm
    @hiyo = Hiyo.new(hiyos_params)
    render :new if @hiyo.invalid? 
  end

  private
  
  def hiyos_params
    params.require(:hiyo).permit(:content)
  end
  
  def set_hiyo
    @hiyo = Hiyo.find(params[:id])
  end
end
