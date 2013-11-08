class AmoebasController < ApplicationController

  def index
    @amoebas = Amoeba.all

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @posts }
    end
  end

 def show
    @amoeba = Amoeba.find(params[:id])
    @act = Act.find(@amoeba)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @amoeba }
    end
  end

  def new
    @amoeba = Amoeba.new
    @acts = Act.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @amoeba }
    end
  end

  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  def create
    @amoeba = Amoeba.new(params[:Amoeba])

    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully created.' }
        format.json { render json: @amoeba, status: :created, location: @amoeba }
      else
        format.html { render action: "new" }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @amoeba = Amoeba.find(params[:id])
    @acts = Act.all
    respond_to do |format|
      if @amoeba.update_attributes(params[:Amoeba])
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @amoeba = Amoeba.find(params[:id])
    @amoeba.destroy

    respond_to do |format|
      format.html { redirect_to Amoebas_url }
      format.json { head :no_content }
    end
  end

end
