class SessionsController < ApplicationController
  def index
    sessions = Session.all
    render json: sessions
  end

  def create
    session = logged_user.sessions.build(session_params)
    session.save if session.valid?
    render json: session
  end

  def show
    session = obtain_session
    render json: session
  end

  def longest
    session = Session.longest_session
    render json: session
  end

  private

  def session_params
    params.require(:session).permit(:title)
  end

  def obtain_session
    Session.find(params[:id])
  end
end
