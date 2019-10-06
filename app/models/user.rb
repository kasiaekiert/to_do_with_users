class User < ApplicationRecord
  include Gravtastic
  gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  validates :year, numericality: { only_integer: true }, allow_blank: true
  mount_uploader :picture, PictureUploader

  def age
    Date.current.year - year if year
  end

  def full_name
    email
  end 
end