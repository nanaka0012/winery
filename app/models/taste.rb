class Taste < ApplicationRecord
    has_many :wines, dependent: :destroy
end
