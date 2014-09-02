class StationsController < ApplicationController

  def index
    @stations = Station.all
    render 'index'
  end

  def new
    @station = Station.new
    render 'new'
  end

  def create
    @station = Station.create(params[:station])
    if @station.valid?
      flash[:notice] = "This station has been added"
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @lines = Line.all
    @station = Station.find(params[:id])
    render 'show'
  end

  def edit
    @station = Station.find(params[:id])
    render 'edit'
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(params[:station])
      flash[:notice] = "This station has been updated"
      redirect_to stations_path
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "This station has been deleted"
    redirect_to stations_path
  end

end
