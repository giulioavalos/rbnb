class CourtsController < ApplicationController

  def index
    @courts = Court.all
  end

  def show
    @court = Court.find(params[:id])
  end

  def new
    @court = Court.new
  end

  def create
    @court = Court.new(court_params)
    if @court.save
      redirect_to @court
    else
      render 'new'
    end
  end

  def edit
    @court = Court.find(params[:id])
  end

  def update
    @court = Court.find(params[:id])
    if @court.update(court_params)
      redirect_to @court
    else
      render 'edit'
    end
  end

  def destroy
    @court = Court.find(params[:id])
    @court.destroy
    redirect_to courts_path
  end

  private
  def court_params
    params.require(:court).permit(:name, :address, :description, :opening_hour, :closing_hour, :indoor, :price_hour)
  end
end
