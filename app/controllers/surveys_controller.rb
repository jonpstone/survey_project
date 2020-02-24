class SurveysController < ApplicationController
  before_action :set_survey

  def index
    @surveys = Survey.order(:name)
  end

  def new
    @survey = Survey.new
    @survey.survey_questions.build
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to surveys
    else
      render :new
    end
  end

  def edit; end

  def update
    if @survey.update(survey_params)
      redirect_to @survey
    else
      render :edit
    end
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
  end

  def survey_params
    params.require(:survey).permit!
  end
end
