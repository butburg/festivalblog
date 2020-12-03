class Upload < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true, length: {minimum: 5, maximum: 80} # Make sure the owner's name is present.
end
