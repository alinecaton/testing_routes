class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :users]

  def index
    @teams = Team.all
  end

  def show
  end

  def users
  end

  def projects
    @projects = Project.all
  end

  private

  def set_team
    @team = Team.find params[:id]

    @users = @team.users
  end
end