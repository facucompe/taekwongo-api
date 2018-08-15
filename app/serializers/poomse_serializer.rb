class PoomseSerializer < ActiveModel::Serializer
  attributes :id, :title, :images, :videos

  def images
    object.file_attachments.image
  end

  def videos
    object.file_attachments.video
  end
end