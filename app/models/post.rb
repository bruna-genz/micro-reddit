# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, allow_blank: true, length: { maximum: 300 }

  belongs_to :user
  has_many :comments
end
