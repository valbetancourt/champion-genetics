class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :horses, dependent: :destroy

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_one_attached :photo

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :photo)
  end
end
