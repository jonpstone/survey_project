class SurveyQuestionsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def survey_question_params
    params.require(:survey_question).permit!
  end
end
