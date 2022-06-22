class Api::SurvivorsController < ApplicationController
  before_action :set_survivor, only: %i[ show update destroy ]

  # GET /survivors
  def index
    @survivors = Survivor.all.sorted_by_name

    # render json: @abducted
    render json: @survivors
  end

  # GET /survivors/1
  def show
    render json: @survivor
  end

  # POST /survivors
  def create
    @survivor = Survivor.new(survivor_params)

    if @survivor.save
      render json: @survivor, status: :created, location: @survivor
    else
      render json: @survivor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /survivors/1
  def update
    if @survivor.update(survivor_update_params)
      render json: @survivor
    else
      render json: @survivor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /survivors/1
  def destroy
    @survivor.destroy
  end

  # generate report
  def report
    render json: @report
  end

  def abductions#index
    @abducted = Survivor.all.abduction_filter
    render json: @abducted
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survivor
      @survivor = Survivor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def survivor_params
      params.require(:survivor).permit(:id, :name, :age, :gender, :last_latitude, :last_longitude, :created_at, :updated_at, :flags, :abduction)
    end

    def survivor_update_params
      params.require(:survivor).permit(:age, :gender, :last_latitude, :last_longitude)
    end

end
