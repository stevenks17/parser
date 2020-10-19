class Question < ApplicationRecord
  belongs_to :graph
  has_many :answers

  validates :content, presence: true

end
