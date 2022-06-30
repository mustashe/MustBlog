class Question < ApplicationRecord
    has_many :answers
    validates :title, presence: true, length: {minimum:2}
    validates :body, presence: true, length: {minimum:2}
    has_many :question_tags, dependent: :destroy
    has_many :tags, through: :question_tags

    def formatted_created_at
        created_at.strftime('%Y-%m-%d %H: %M: %S')
    end
end
