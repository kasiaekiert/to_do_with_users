class Task < ApplicationRecord
  belongs_to :user

  validates :name, :description, presence: true
  validates :description, black_list: true 
end
