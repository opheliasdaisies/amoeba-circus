class AmoebasController < ApplicationController
  def index
    @amoebas = Amoeba.all
  end

  def new
    @amoeba = Amoeba.new
  end

  def create
    @amoeba = Amoeba.new(params[:amoeba])
    if @amoeba.save
      redirect_to @amoeba
    else
      render new
    end
  end

  def show
    @amoeba = Amoeba.find(params[:id])
  end

  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  def update
    @amoeba = Amoeba.find(params[:id])
    if @amoeba.update_attributes(params[:amoeba])
      redirect_to @amoeba
    else
      render edit
    end
  end

  def destroy
    @amoeba = Amoeba.find(params[:id])
    @amoeba.destroy
  end

end