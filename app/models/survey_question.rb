class SurveyQuestion < ApplicationRecord
    belongs_to :survey

    validates_uniqueness_of :question_text
    validates_presence_of :question_text
    validates :name, length: { in: 5..240 }
    validates_associated :survey
end