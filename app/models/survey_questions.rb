class SurveyQuestion < ApplicationRecord
    belongs_to :survey

    validates_uniqueness :question_text
    validates_presence_of :question_text
    validates :name, length: { in: 5..240 }
end