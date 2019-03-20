class Store < ActiveRecord::Base
  has_many :employees
  # Validations
  # Stores must always have a name that is a minimum of 3 characters
  validates :name,
    presence: true,
    length: { minimum: 3 }
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue,
    numericality: { only_integer: true,
                    greater_than_or_equal_to: 0 }
  # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
  validate :carry_apparel

  private

  def carry_apparel
    if !womens_apparel && !mens_apparel
      errors.add(:womens_apparel, 'must carry womens or mens apparel')
      errors.add(:mens_apparel, 'must carry womens or mens apparel')
    end
  end
end

