# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 },
                   uniqueness: true
  validates :email, presence: true

  has_many :posts
  has_many :comments
end
