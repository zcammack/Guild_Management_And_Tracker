class Campaign < ApplicationRecord
    has_many :characters, :dependent => :destroy
    has_many :users, through: :characters

    accepts_nested_attributes_for :characters, reject_if: proc {|attributes| attributes["name"].blank?}

    validates :name, presence: :true
    validates :dungeonmaster, presence: :true

end
