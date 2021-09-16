class Quiz < ApplicationRecord
  belongs_to :quiz_list
  has_many :quiz_responses
end
