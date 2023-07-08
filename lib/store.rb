# store.rb
class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validate :must_carry_apparel

  def must_carry_apparel
    if !mens_apparel? && !womens_apparel?
      errors.add(:base, "Store must carry at least one type of apparel")
    end
  end
end
