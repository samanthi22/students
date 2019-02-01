class Award < ApplicationRecord
    belongs_to :student
    validates_associated :student
    validates_presence_of :name, :year
    
    validates_uniqueness_of :name, scope: :year, message: "already been given for that year"
    
    validates_inclusion_of :year, in: (1980..Date.today.year)
end
