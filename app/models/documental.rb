class Documental < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
  end
  
