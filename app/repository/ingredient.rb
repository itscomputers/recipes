module Repository
  class Ingredient
    attr_reader :id, :name, :type, :created_at, :updated_at

    def self.all
      {
        1 => Ingredient.new(1, "flour", "by_volume", "2022-05-30", "2022-05-30"),
        2 => Ingredient.new(2, "flour", "by_weight", "2022-05-30", "2022-05-30"),
        3 => Ingredient.new(3, "sugar", "by_volume", "2022-05-30", "2022-05-30"),
      }
    end

    def self.fetch(id)
      all[id]
    end

    def initialize(id, name, type, created_at, updated_at)
      @id = id
      @name = name
      @type = type
      @created_at = created_at
      @updated_at = updated_at
    end
  end
end
