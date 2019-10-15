class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredient_attributes=(attributes)
    attributes.each do | ingredient_attributes|
     self.ingredients.build(ingredient_attributes)
    end 
  end 

end
