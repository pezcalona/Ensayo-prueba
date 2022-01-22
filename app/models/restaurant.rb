class Restaurant < ApplicationRecord
    before_save :set_capitalize
    has_many :reviews

    validates :name, uniqueness: true, presence: true
    validates :address, presence: true
    validates :rating, numericality: true, presence: true
    validates :chef, uniqueness: true, presence: true

    private
    def  set_capitalize
        self.name.capitalize!
        self.address.capitalize!
        self.chef.capitalize!
    end
end