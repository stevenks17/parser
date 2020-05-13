class Graph < ApplicationRecord
    has_many :notes
    has_many :questions

    validates :name, presence: true
    validates :info_url, presence: true
    validates :screenshot_url, presence: true
end
