class PlayersMapPerformancesController < ApplicationController
  before_action :set_players_map_performance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /players_map_performances
  # GET /players_map_performances.json
  def index
    @players_map_performances = PlayersMapPerformance.all
  end

  # GET /players_map_performances/1
  # GET /players_map_performances/1.json
  def show
  end

  # GET /players_map_performances/new
  def new
    @players_map_performance = PlayersMapPerformance.new
  end

  # GET /players_map_performances/1/edit
  def edit
  end

  # POST /players_map_performances
  # POST /players_map_performances.json
  def create
    @players_map_performance = PlayersMapPerformance.new(players_map_performance_params)

    respond_to do |format|
      if @players_map_performance.save
        format.html { redirect_to @players_map_performance, notice: 'Players map performance was successfully created.' }
        format.json { render :show, status: :created, location: @players_map_performance }
      else
        format.html { render :new }
        format.json { render json: @players_map_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players_map_performances/1
  # PATCH/PUT /players_map_performances/1.json
  def update
    respond_to do |format|
      if @players_map_performance.update(players_map_performance_params)
        format.html { redirect_to @players_map_performance, notice: 'Players map performance was successfully updated.' }
        format.json { render :show, status: :ok, location: @players_map_performance }
      else
        format.html { render :edit }
        format.json { render json: @players_map_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_map_performances/1
  # DELETE /players_map_performances/1.json
  def destroy
    @players_map_performance.destroy
    respond_to do |format|
      format.html { redirect_to players_map_performances_url, notice: 'Players map performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_players_map_performance
      @players_map_performance = PlayersMapPerformance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def players_map_performance_params
      params.require(:players_map_performance).permit(:player_id, :map_id, :win_rate, :loose_rate)
    end
end
