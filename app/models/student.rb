class Student < ApplicationRecord
    has_many :awards, dependent: :destroy
    has_and_belongs_to_many :courses
    
    def name
        given_name + " " + family_name
    end
end
