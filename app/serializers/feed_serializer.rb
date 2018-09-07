class FeedSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture_url, :category
  has_many :feed_images

  def picture_url
    object.feed_images.first&.link&.url
  end
end
