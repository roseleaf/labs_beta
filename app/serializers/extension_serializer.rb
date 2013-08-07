class ExtensionSerializer < ActiveModel::Serializer
  attributes :id, :name, :download_url, :short_description, :notes, :category, :interface, :author_type, :zip_url
  def readme
  	(object).readme
  end
  def zip_url
  	(object).download_zip_url
  end
end
