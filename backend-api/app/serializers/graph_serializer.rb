class GraphSerializer < ActiveModel::Serializer
  attributes :id, :name, :info_url, :screenshot_url
  has_many :notes
  has_many :questions
end
