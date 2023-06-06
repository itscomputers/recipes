module Repository
  module Ingredient
    def self.all
      {
        1 => Models::Ingredient.new(1, "flour", "geraldine"),
        2 => Models::Ingredient.new(2, "olive oil", "digby"),
        3 => Models::Ingredient.new(3, "sugar", "reggie"),
      }
    end

    def self.fetch(id)
      all[id]
    end
  end
end
