module Views::Ingredient
  class Show
    attr_reader :params

    def initialize(id)
      @id = id
    end

    def ingredient
      Repository::Ingredient.fetch(@id)
    end
  end
end
