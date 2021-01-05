# frozen_string_literal: true

class Article < ApplicationRecord
  mount_uploader :img, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :title, presence: true, length: { minimum: 5, maximum: 80 }
  validates :description, presence: false, length: { minimum: 5, maximum: 120 }
  validates :text, presence: true, length: { minimum: 20, maximum: 7000 }
  validates :img, presence: true, file_size: { less_than: 10.megabytes }
end
