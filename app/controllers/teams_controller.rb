class TeamsController < ApplicationController

  def index
    render json: Team.all
  end

  def show

    team = Team.find(params[:id])
    render json: team.as_json({
      # include: :venue ############# includes alll
      except: [:id, :created_at, :updated_at],
      include: {
        players: {
          except: [:id, :created_at, :updated_at, :player_id] 
          }
        
        }
      })

  end
end