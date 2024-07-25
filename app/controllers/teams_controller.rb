class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  def index
    @teams = Team.all
    if params[:year]
      @teams = Team.founded_after(params[:founded]) if params[:founded].present?
      
    end
  end

  def show
    binding.pry

  end

  def new
    @team = Team.new
    @team.players.build # build nested players form
    @matches = Match.all # for the match selection
  end

  def edit
    @matches = Match.all # Ensure @matches is not nil


  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to @team
      else
        render :new,status:422
      end

  end

  def update
    if @team.update(team_params)
      redirect_to @team
      else
        render :edit,status:422
      end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
    
  end
  def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :country, :founded, :description)
    end
end
