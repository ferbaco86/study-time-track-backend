class SessionsController < ApplicationController
  def index
    sessions = Session.all
    render json: sessions
  end

  def create
    session = Session.create(session_params)
    render json: session
  end

  def session_params
    params.require(:session).permit(:title, :total_time)
  end
end
