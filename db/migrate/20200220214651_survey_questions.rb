class SurveyQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :writers do |t|
      t.string :question_text
      t.boolean :fixed_or_free_question
      t.integer :survey_id

      t.timestamps
    end
  end
end
