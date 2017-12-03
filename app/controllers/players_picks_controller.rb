class PlayersPicksController < ApplicationController
  before_action :set_players_pick, only: [:show, :edit, :update, :destroy]

  # GET /players_picks
  # GET /players_picks.json
  def index
    @players_picks = PlayersPick.all
  end

  # GET /players_picks/1
  # GET /players_picks/1.json
  def show
  end

  # GET /players_picks/new
  def new
    @players_pick = PlayersPick.new
  end

  # GET /players_picks/1/edit
  def edit
  end

  # POST /players_picks
  # POST /players_picks.json
  def create
    @players_pick = PlayersPick.new(players_pick_params)

    respond_to do |format|
      if @players_pick.save
        format.html { redirect_to @players_pick, notice: 'Players pick was successfully created.' }
        format.json { render :show, status: :created, location: @players_pick }
      else
        format.html { render :new }
        format.json { render json: @players_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players_picks/1
  # PATCH/PUT /players_picks/1.json
  def update
    respond_to do |format|
      if @players_pick.update(players_pick_params)
        format.html { redirect_to @players_pick, notice: 'Players pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @players_pick }
      else
        format.html { render :edit }
        format.json { render json: @players_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_picks/1
  # DELETE /players_picks/1.json
  def destroy
    @players_pick.destroy
    respond_to do |format|
      format.html { redirect_to players_picks_url, notice: 'Players pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_players_pick
      @players_pick = PlayersPick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def players_pick_params
      params.require(:players_pick).permit(:player_id, :champion_id, :pick_rate, :win_rate, :kda)
    end
end
