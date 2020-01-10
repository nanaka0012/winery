class Location < ApplicationRecord
    has_many :purchases, dependent: :destroy
end
