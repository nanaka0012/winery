class Color < ApplicationRecord
    has_many :wines, dependent: :destroy
end
