class ExtensionSerializer < ActiveModel::Serializer
  attributes :id, :name, :download_url, :short_description, :notes, :category, :interface, :author_type
end
