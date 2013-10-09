class ExtensionSerializer < ActiveModel::Serializer
  attributes :id, :name, :download_url, :short_description, :notes, :category, :interface, :author_type, :zip_url, :icon_url, :readme
  def readme
  	(object).readme
  end
  def zip_url
  	(object).download_zip_url
  end
  def icon_url
  	(object).icon_url
  end

end
