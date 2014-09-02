class LinesController < ApplicationController

  def index
    @lines = Line.all
    render 'index'
  end

  def new
    @line = Line.new
    render 'new'
  end

  def create
    @line = Line.create(params[:line])
    if @line.valid?
      flash[:notice] = "This line has been added"
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def edit
    @line = Line.find(params[:id])
    render 'edit'
  end

  def show
    @line = Line.find(params[:id])
    render 'show'
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(params[:line])
      flash[:notice] = "This line was successfully updated"
      redirect_to lines_path
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "This line has been deleted"
    redirect_to lines_path
  end

end
