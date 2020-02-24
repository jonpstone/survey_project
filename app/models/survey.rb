class Survey < ApplicationRecord
    has_many :survey_questions, dependent: :destroy

    validates_uniqueness_of :name
    validates_presence_of :name
    validates :name, length: { in: 3..25 }
end