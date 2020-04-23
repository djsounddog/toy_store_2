# frozen_string_literal: true

class Manufacturer < ApplicationRecord
  validates :name, :location, presence: true
  has_many :toys
end
