class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :graph_id
  belongs_to :graph
end
