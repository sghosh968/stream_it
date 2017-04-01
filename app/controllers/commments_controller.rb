class CommmentsController < ApplicationController
  before_action :set_commment, only: [:show, :edit, :update, :destroy]

  # GET /commments
  # GET /commments.json
  def index
    @commments = Commment.all
  end

  # GET /commments/1
  # GET /commments/1.json
  def show
  end

  # GET /commments/new
  def new
    @commment = Commment.new
  end

  # GET /commments/1/edit
  def edit
  end

  # POST /commments
  # POST /commments.json
  def create
    @commment = Commment.new(commment_params)

    respond_to do |format|
      if @commment.save
        format.html { redirect_to @commment, notice: 'Commment was successfully created.' }
        format.json { render :show, status: :created, location: @commment }
      else
        format.html { render :new }
        format.json { render json: @commment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commments/1
  # PATCH/PUT /commments/1.json
  def update
    respond_to do |format|
      if @commment.update(commment_params)
        format.html { redirect_to @commment, notice: 'Commment was successfully updated.' }
        format.json { render :show, status: :ok, location: @commment }
      else
        format.html { render :edit }
        format.json { render json: @commment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commments/1
  # DELETE /commments/1.json
  def destroy
    @commment.destroy
    respond_to do |format|
      format.html { redirect_to commments_url, notice: 'Commment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commment
      @commment = Commment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commment_params
      params.require(:commment).permit(:user_id, :commentable_type, :commentable_id, :content)
    end
end
