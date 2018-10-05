class Clientes1sController < ApplicationController
  before_action :set_clientes1, only: [:show, :edit, :update, :destroy]

  # GET /clientes1s
  # GET /clientes1s.json
  def index
    @clientes1s = Clientes1.all
  end

  # GET /clientes1s/1
  # GET /clientes1s/1.json
  def show
  end

  # GET /clientes1s/new
  def new
    @clientes1 = Clientes1.new
  end

  # GET /clientes1s/1/edit
  def edit
  end

  # POST /clientes1s
  # POST /clientes1s.json
  def create
    @clientes1 = Clientes1.new(clientes1_params)

    respond_to do |format|
      if @clientes1.save
        format.html { redirect_to @clientes1, notice: 'Clientes1 was successfully created.' }
        format.json { render :show, status: :created, location: @clientes1 }
      else
        format.html { render :new }
        format.json { render json: @clientes1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes1s/1
  # PATCH/PUT /clientes1s/1.json
  def update
    respond_to do |format|
      if @clientes1.update(clientes1_params)
        format.html { redirect_to @clientes1, notice: 'Clientes1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientes1 }
      else
        format.html { render :edit }
        format.json { render json: @clientes1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes1s/1
  # DELETE /clientes1s/1.json
  def destroy
    @clientes1.destroy
    respond_to do |format|
      format.html { redirect_to clientes1s_url, notice: 'Clientes1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientes1
      @clientes1 = Clientes1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientes1_params
      params.require(:clientes1).permit(:name, :email)
    end
end
