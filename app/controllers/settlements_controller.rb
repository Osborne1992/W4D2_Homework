class SettlementsController < ApplicationController

  def index
    if params[:name]
      @settlements = Settlement.where("name ilike ?", "%#{params[:name]}%", )
    else
      @settlements = Settlement.all.order(:name)
    end
  end

  def show
    @settlement = Settlement.find(params[:id])
  end

  def new
    @settlement = Settlement.new
  end

  def create
    Settlement.create(settlement_params)
    redirect_to(settlements_path)
  end

  def destroy
    settlement = Settlement.find(params[:id])
    settlement.destroy
    redirect_to(settlements_path)
  end

  def edit
    @settlement = Settlement.find(params[:id])
  end

  def update
    settlement = Settlement.find(params[:id])
    settlement.update(settlement_params)
    redirect_to(settlements_path)
  end

  private

  def settlement_params
    params.require(:settlement).permit(:country_id, :name, :kind)
  end

end