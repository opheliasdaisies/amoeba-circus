class AmoebasController < ApplicationController
  before_action :set_amoeba, only: [:show, :edit, :update, :destroy]

  # GET /amoebas
  # GET /amoebas.json
  def index
    @amoebas = Amoeba.all
  end

  # GET /amoebas/1
  # GET /amoebas/1.json
  def show
    @amoeba = Amoeba.find(params[:id])
  end

  # GET /amoebas/new
  def new
    @amoeba = Amoeba.new
    @talents = Talent.all
    @acts = Act.all
  end

  # GET /amoebas/1/edit
  def edit
    @talents = Talent.all
    @acts = Act.all
  end

  # POST /amoebas
  # POST /amoebas.json
  def create
    @amoeba = Amoeba.new(amoeba_params)

    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amoeba }
      else
        format.html { render action: 'new' }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amoebas/1
  # PATCH/PUT /amoebas/1.json
  def update
    respond_to do |format|
      if @amoeba.update(amoeba_params)
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amoebas/1
  # DELETE /amoebas/1.json
  def destroy
    @amoeba.destroy
    respond_to do |format|
      format.html { redirect_to amoebas_url }
      format.json { head :no_content }
    end
  end

  # GET /amoebas/1/split
  def split
    @amoeba = Amoeba.find(params[:id])
  end

  #POST /amoebas/splitter
  def splitter

    amoeba_one = Amoeba.new
    amoeba_one.name = params[:name1]
    gen = params[:generation].to_i
    amoeba_one.generation = gen + 1
    amoeba_one.talent_id = params[:talent_id]
    amoeba_one.act_id = params[:act_id]

    amoeba_two = Amoeba.new
    amoeba_two.name = params[:name2]
    gen = params[:generation].to_i
    amoeba_two.generation = gen + 1
    amoeba_two.talent_id = params[:talent_id]
    amoeba_two.act_id = params[:act_id]

    original_amoeba = Amoeba.find(params[:original_id])

    if amoeba_one.save && amoeba_two.save && original_amoeba.destroy
      @amoebas = Amoeba.all
      render 'index'
    else
      "Error - could not split your Amoeba :("
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amoeba
      @amoeba = Amoeba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amoeba_params
      params.require(:amoeba).permit(:name, :talent, :generation, :act_id)
    end
end
