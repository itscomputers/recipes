module Views::Ingredient
  class Index
    attr_reader :params, :title

    def initialize(params)
      @params = params
      @title = "ingredients"
    end

    def sort_key
      (@params.dig("sort") || "id").to_sym
    end

    def ingredients
      Repository::Ingredient.all.values.sort_by(&sort_key)
    end

    def ingredient_attrs
      [:id, :name, :creator]
    end
  end
end
