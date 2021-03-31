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
    @session = Session.joins(:subjects)
    .where("user_id=#{(params[:id])}")
    .select('sessions.*,SUM(CAST((subjects.time) AS FLOAT)) AS total_time')
    .group('sessions.id')
    .order('total_time DESC').first
    if @session.valid? 
      @total_time = @session.total_time
    end
      
    render json: @session, total_time: @total_time
  end

  private

  def session_params
    params.require(:session).permit(:title)
  end

  def obtain_session
    Session.find(params[:id])
  end
end
