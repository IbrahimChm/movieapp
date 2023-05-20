class Pelicula < ApplicationRecord
  validates :name, :synopsis, :director, presence: true
end