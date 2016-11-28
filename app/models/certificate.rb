class Certificate < ApplicationRecord
  belongs_to :parcel
  has_many :user_certificates
  has_many :users, through: :user_certificates
end
