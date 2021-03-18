class SubjectsController < ApplicationController
  def index
    subjects = Subject.all
    render json: subjects
  end

  def create
    subject = Session.find(params[:id]).subjects.build(subject_params)
    if subject.valid?
      subject.save
    end
    render json: subject
  end

  def subject_params
    params.require(:subject).permit(:name, :time)
  end
end
