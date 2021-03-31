class SubjectsController < ApplicationController
  def index
    subjects = Subject.all
    render json: subjects
  end

  def create
    subject = Session.find(params[:id]).subjects.build(subject_params)
    subject.save if subject.valid?
    render json: subject
  end

  def top
    top5 = Subject.top_5_studied(params[:id])
    render json: top5
  end

  def subject_params
    params.require(:subject).permit(:name, :time)
  end
end
