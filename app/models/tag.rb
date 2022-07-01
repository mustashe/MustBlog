class Tag < ApplicationRecord
    has_many :question_tags, dependent: :destroy
    has_many :question, through: :question_tags
end
