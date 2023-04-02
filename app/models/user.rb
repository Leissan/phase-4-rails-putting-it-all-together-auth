class User < ApplicationRecord
    validates :fave_destination, presence: true
    validate :fave_destination_rule
end

private

def fave_destination_rule
    unless fave_destination.include? ("Brazil")
        errors.add(:fave_destination, "must contain 'Brazil'")
    end
end