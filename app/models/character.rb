class Character < ApplicationRecord
    belongs to :users
    belongs to :campaigns
end
