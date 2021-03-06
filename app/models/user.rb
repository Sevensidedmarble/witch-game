class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :username, uniqueness: true, presence: true

  def avatar_url
    url = "https://robohash.org/#{username}"
  end
end
