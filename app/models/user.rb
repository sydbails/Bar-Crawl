class User < ApplicationRecord
  has_one_attached :avatar
  has_many :crawls
  has_many :crawlers, through: :crawls

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
