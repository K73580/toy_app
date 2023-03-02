class EmloyeesController < ApplicationController
  before_action :set_emloyee, only: %i[ show edit update destroy ]

  # GET /emloyees or /emloyees.json
  def index
    @emloyees = Emloyee.all
  end

  # GET /emloyees/1 or /emloyees/1.json
  def show
  end

  # GET /emloyees/new
  def new
    @emloyee = Emloyee.new
  end

  # GET /emloyees/1/edit
  def edit
  end

  # POST /emloyees or /emloyees.json
  def create
    @emloyee = Emloyee.new(emloyee_params)

    respond_to do |format|
      if @emloyee.save
        format.html { redirect_to emloyee_url(@emloyee), notice: "Emloyee was successfully created." }
        format.json { render :show, status: :created, location: @emloyee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emloyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emloyees/1 or /emloyees/1.json
  def update
    respond_to do |format|
      if @emloyee.update(emloyee_params)
        format.html { redirect_to emloyee_url(@emloyee), notice: "Emloyee was successfully updated." }
        format.json { render :show, status: :ok, location: @emloyee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emloyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emloyees/1 or /emloyees/1.json
  def destroy
    @emloyee.destroy

    respond_to do |format|
      format.html { redirect_to emloyees_url, notice: "Emloyee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emloyee
      @emloyee = Emloyee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emloyee_params
      params.require(:emloyee).permit(:name, :age, :gender, :designation)
    end
end
