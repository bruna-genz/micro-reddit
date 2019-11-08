# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :comment, presence: true, length: { maximum: 200 }

  belongs_to :post
  belongs_to :user
end
