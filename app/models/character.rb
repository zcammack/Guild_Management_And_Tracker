class Character < ApplicationRecord
    belongs to :users
    belongs to :campaigns

    validates_presence_of :name

end
