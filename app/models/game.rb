# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :announcements, dependent: :delete_all
end
