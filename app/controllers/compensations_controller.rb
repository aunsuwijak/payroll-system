class CompensationsController < ApplicationController
  before_action :set_compensation, only: [:show, :edit, :update, :destroy]

  # GET /compensations
  # GET /compensations.json
  def index
    @compensations = Compensation.all
  end

  # GET /compensations/1
  # GET /compensations/1.json
  def show
  end

  # GET /compensations/new
  def new
    @compensation = Compensation.new
    @employees = Employee.all
  end

  # GET /compensations/1/edit
  def edit
    @employee = Employee.all
  end

  # POST /compensations
  # POST /compensations.json
  def create
    @compensation = Compensation.new(compensation_params)

    respond_to do |format|
      if @compensation.save
        format.html { redirect_to @compensation, notice: 'Compensation was successfully created.' }
        format.json { render :show, status: :created, location: @compensation }
      else
        format.html { render :new }
        format.json { render json: @compensation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compensations/1
  # PATCH/PUT /compensations/1.json
  def update
    respond_to do |format|
      if @compensation.update(compensation_params)
        format.html { redirect_to @compensation, notice: 'Compensation was successfully updated.' }
        format.json { render :show, status: :ok, location: @compensation }
      else
        format.html { render :edit }
        format.json { render json: @compensation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compensations/1
  # DELETE /compensations/1.json
  def destroy
    @compensation.destroy
    respond_to do |format|
      format.html { redirect_to compensations_url, notice: 'Compensation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compensation
      @compensation = Compensation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compensation_params
      params.require(:compensation).permit(:employee_id, :kind, :amount)
    end
end
