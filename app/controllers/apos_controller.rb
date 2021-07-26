class AposController < ApplicationController
  before_action :set_apo_params, only: [:show, :update, :edit, :destroy]

  def index
    @apos = Apo.all
  end

  def new
    @apo = Apo.new
  end

  def create
    @apo = Apo.new(apo_params)
    if @apo.save
      redirect_to action: :index
    end
  end

  def show
  end

  def edit
  end

  def update
    if Apo.update(apo_params)
      redirect_to apo_path
    else
      render 'edit'
    end
  end

  def destroy
    if @apo.destroy
      redirect_to action: :index
    end
  end
  
  private
  def apo_params
    params.require(:apo).permit(:name, :date, :address, :content, :memo)
  end

  def set_apo_params
    @apo = Apo.find(params[:id])
  end

end
