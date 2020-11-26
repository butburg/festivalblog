class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :title, presence: false
  validates :text, presence: true
end
