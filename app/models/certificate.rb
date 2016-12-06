class Certificate < ApplicationRecord
  TEMPLATE_ANNIVERSAIRE = ["bon_anniversaire"]
  TEMPLATE_NAISSANCE = ["naissance"]
  TEMPLATE_NOEL = ["joyeux_noel_rouge", "noel_foret_sapins"]
  # TEMPLATES = ["naissance", "bapteme_rose", "joyeux_noel_rouge", "noel_foret_sapins", "bon_anniversaire"]
  OCCASIONS = ["Un anniversaire", "Une naissance", "Une baptême", "Un mariage", "Noël", "Dire merci", "Faire plaisir", "Une occasion personnelle"]

  belongs_to :parcel
  has_many :user_certificates
  has_many :users, through: :user_certificates
  validate :parcel_has_enough_trees?

  private

  def parcel_has_enough_trees?
    errors.add(:trees_quantity, "dépasse le nombre d'arbre restant") unless trees_quantity <= parcel.tree_quantity_remaining
  end
end
