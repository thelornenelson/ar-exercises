class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :must_carry_men_and_or_womens_wear

  before_destroy :cannot_destroy_empty_store

  def must_carry_men_and_or_womens_wear
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "Must sell at least one of mens_apparel or womens_apparel")
      errors.add(:womens_apparel, "Must sell at least one of mens_apparel or womens_apparel")
    end

  end

  private
    def cannot_destroy_empty_store
      if self.employees.count > 0
        throw :abort
      end
    end
end
