class Wine < ApplicationRecord
    belong_to :color
    belong_to :taste
    has_many :purchases, dependent: :destroy
end
