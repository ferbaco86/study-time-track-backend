class SessionsController < ApplicationController
  def index
    sessions = Session.all
    render json: sessions
  end

  def create
    session = session_user.sessions.build(session_params)
    if session.valid?
      session.save
    end
    render json: session
  end

  def session_params
    params.require(:session).permit(:title)
  end
end
