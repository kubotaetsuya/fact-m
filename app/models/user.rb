class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          
  validates :email, uniqueness: true
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX
  validates :password, confirmation: true
  with_options presence: true do
    validates :password_confirmation
    validates :nickname
    validates :birthday
  end
  
  has_many :posts
  has_many :comments
end
