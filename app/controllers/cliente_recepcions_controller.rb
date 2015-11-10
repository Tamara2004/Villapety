class ClienteRecepcionsController < ApplicationController
  before_action :set_cliente_recepcion, only: [:show, :edit, :update, :destroy]

  # GET /cliente_recepcions
  # GET /cliente_recepcions.json
  def index
    @cliente_recepcions = ClienteRecepcion.all
  end

  # GET /cliente_recepcions/1
  # GET /cliente_recepcions/1.json
  def show
  end

  # GET /cliente_recepcions/new
  def new
    @cliente_recepcion = ClienteRecepcion.new
  end

  # GET /cliente_recepcions/1/edit
  def edit
  end

  # POST /cliente_recepcions
  # POST /cliente_recepcions.json
  def create
    @cliente_recepcion = ClienteRecepcion.new(cliente_recepcion_params)

    respond_to do |format|
      if @cliente_recepcion.save
        format.html { redirect_to @cliente_recepcion, notice: 'Cliente recepcion was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_recepcion }
      else
        format.html { render :new }
        format.json { render json: @cliente_recepcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_recepcions/1
  # PATCH/PUT /cliente_recepcions/1.json
  def update
    respond_to do |format|
      if @cliente_recepcion.update(cliente_recepcion_params)
        format.html { redirect_to @cliente_recepcion, notice: 'Cliente recepcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_recepcion }
      else
        format.html { render :edit }
        format.json { render json: @cliente_recepcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_recepcions/1
  # DELETE /cliente_recepcions/1.json
  def destroy
    @cliente_recepcion.destroy
    respond_to do |format|
      format.html { redirect_to cliente_recepcions_url, notice: 'Cliente recepcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_recepcion
      @cliente_recepcion = ClienteRecepcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_recepcion_params
      params.require(:cliente_recepcion).permit(:cliente_id, :recepcion_id)
    end
end
