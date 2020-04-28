# frozen_string_literal: true

class Toy < ApplicationRecord
  belongs_to :user
  has_one :manufacturer
  has_one_attached :image
  has_many :toys_categories
  has_many :categories, through: :toys_categories
end
