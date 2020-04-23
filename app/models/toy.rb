# frozen_string_literal: true

class Toy < ApplicationRecord
  validates :name, :manufacturer, presence: true
  belongs_to :user
  has_one :manufacturer
end
