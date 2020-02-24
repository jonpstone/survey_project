class SurveyQuestionsController < ApplicationController
  before_action :set_survey_question

  def index
    @survey_questions = SurveyQuestion.where(survery_id: parmas[:survey_id])
  end

  def new; end

  def create
    @survey_question = SurveyQuestion.new(survey_question_params)
    if @survey_question.save
      redirect_to @survey
    else
      render :new
    end
  end

  def edit; end
  end

  def update
    if @survey_question.update(survey_question_params)
      redirect_to @review
    else
      render :edit
  end

  private

  def set_survey
    @survey = Survey.find(params[:survey_id])
  end

  def set_survey_question
    @survey_question = SurveyQuestion.find(params[:id])

  def survey_question_params
    params.require(:survey_question).permit!
  end
end
