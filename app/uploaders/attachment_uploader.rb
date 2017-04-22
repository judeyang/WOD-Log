class AttachmentUploader < CarrierWave::Uploader::Base

 belongs_to :user
 belongs_to :job

 mount_uploader :attachment, AttachmentUploader

 validates :content, presence: true

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


end
