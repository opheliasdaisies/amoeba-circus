class ActsController < ApplicationController

  def index
    @acts = Act.all
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new(params[:act])
    if @act.save
      redirect_to @act
    else
      render new
    end
  end

  def show
    @act = Act.find(params[:id])
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    @act = Act.find(params[:id])
    if @act.update_attributes(params[:act])
      redirect_to @act
    else
      render edit
    end
  end

  def destroy
    @act = Act.find(params[:id])
    @act.destroy
    redirect_to acts_url
  end

end