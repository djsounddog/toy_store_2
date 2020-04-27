# frozen_string_literal: true

class Manufacturer < ApplicationRecord
  has_many :toys, dependent: :destroy
end
