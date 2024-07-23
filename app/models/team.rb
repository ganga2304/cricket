class Team < ApplicationRecord
    has_many :players, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates :country, presence: true
    validates :founded, presence: true, numericality: { greater_than: 1901 }
    validates :description, length: { maximum: 500 }
    
end