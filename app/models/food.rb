class Food < ApplicationRecord
  # has_many :recipe_foods
  belongs_to :user
end

# user = User.create(name: 'Harriet Oteng')
# Food.create(name: 'Apple', measurement_unit: 'grams', price: 5, quantity: 20, user_id: User.first.id)
# Food.create(name: 'Pineapple', measurement_unit: 'grams', price: 1, quantity: 10, user_id: User.first.id)
# Food.create(name: 'Chicken breast', measurement_unit: 'units', price: 2, quantity: 2, user_id: User.first.id)