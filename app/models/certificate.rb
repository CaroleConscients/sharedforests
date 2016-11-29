class Certificate < ApplicationRecord
  belongs_to :parcel
  has_many :user_certificates
  has_many :users, through: :user_certificates
  OCCASIONS = ["Un anniversaire", "Une naissance", "Une baptême", "Un mariage", "Noël", "Dire merci", "Faire plaisir", "Une occasion personnelle"]
end
