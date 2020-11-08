class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :characters
  has_many :campaigns, through: :characters
       
  validates_presence_of :name, uniqueness: true
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, uniqueness: true
       
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |admin|
    admin.provider = auth.provider
    admin.name = auth.info.name
    admin.uid = auth.uid
    admin.adminname = auth.info.nickname
    admin.email = auth.info.email
    admin.password = Devise.friendly_token[0,20]
    end
  end
end