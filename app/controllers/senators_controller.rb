class SenatorsController < ApplicationController
  before_action :set_senator, only: %i[ show edit update destroy ]

  # GET /senators or /senators.json
  def index
    @senators = Senator.all
  end

  # GET /senators/1 or /senators/1.json
  def show
  end

  # GET /senators/new
  def new
    @senator = Senator.new
  end

  # GET /senators/1/edit
  def edit
  end

  # POST /senators or /senators.json
  def create
    @senator = Senator.new(senator_params)

    respond_to do |format|
      if @senator.save
        format.html { redirect_to @senator, notice: "Senator was successfully created." }
        format.json { render :show, status: :created, location: @senator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @senator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senators/1 or /senators/1.json
  def update
    respond_to do |format|
      if @senator.update(senator_params)
        format.html { redirect_to @senator, notice: "Senator was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @senator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @senator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senators/1 or /senators/1.json
  def destroy
    @senator.destroy!

    respond_to do |format|
      format.html { redirect_to senators_path, notice: "Senator was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_senator
      @senator = Senator.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
      def senator_params
        params.require(:senator).permit(:name, :photo, :title, :party_id, :department_id)
    end
end
