class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :graph
end
