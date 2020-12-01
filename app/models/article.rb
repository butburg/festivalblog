# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 80 }
  validates :description, presence: false, length: { minimum: 5, maximum: 120 }
  validates :text, presence: true, length: { minimum: 20, maximum: 7000 }
end
