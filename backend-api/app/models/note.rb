class Note < ApplicationRecord
  belongs_to :graph

  validates :content, presence: true
end
