class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
  
  def answers_for_form
      collection = answers.where(survey_id: id)
      
      if collection.any?
          collection
      else
          answers.build
      end
  end
end
