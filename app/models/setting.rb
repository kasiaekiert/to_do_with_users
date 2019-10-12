class Setting < ApplicationRecord
  belongs_to :user

  enum locale: [:en, :pl]

  validates :locale, inclusion: { in: ['en', 'pl']}
end