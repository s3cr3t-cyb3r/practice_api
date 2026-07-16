class Cat < ApplicationRecord
    validates :breed, presence: true
end
