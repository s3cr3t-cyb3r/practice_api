class Teacher < ApplicationRecord
    validates :subject, presence: true
    validates :grade, presence: true
end
