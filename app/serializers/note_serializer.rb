class NoteSerializer
  include JSONAPI::Serializer
  attributes :subject, :body
end
