class Purchase < ApplicationRecord
    belong_to :user
    belong_to :location
    belong_to :wine
end
