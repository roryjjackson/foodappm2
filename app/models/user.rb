class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :favourite, dependent: :destroy
  after_create :create_favourite

  has_many :recipes

  private

  def create_favourite
    Favourite.create(user: self)
  end
end
