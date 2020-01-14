class Wine < ApplicationRecord
    belongs_to :color
    belongs_to :taste
    has_many :purchases, dependent: :destroy
end
