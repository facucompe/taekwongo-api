class FeedSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture_url, :category, :feed_images, :body

  def picture_url
    object.feed_images.first&.link&.url
  end

  def feed_images
    object.feed_images[1..-1]
  end
end
