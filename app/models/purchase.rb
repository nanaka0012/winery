class Purchase < ApplicationRecord
    belongs_to :user
    belongs_to :location
    belongs_to :wine
end
