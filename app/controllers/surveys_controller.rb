class SurveysController < ApplicationController
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

  def survey_params
    params.require(:survey).permit!
  end
end
