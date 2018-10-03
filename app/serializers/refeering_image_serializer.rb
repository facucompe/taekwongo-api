class RefeeringImageSerializer < ActiveModel::Serializer
  attributes :link, :category

  def link
    object.link.url
  end
end
