class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :title, presence: false, length: { maximum: 120}
  validates :text, presence: true
end
