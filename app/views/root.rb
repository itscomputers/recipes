module Views
  class Root
    attr_reader :title, :greeting

    def initialize(title, **options)
      @title = title
      @greeting = options.dig(:greeting)
    end

    def recipes
      [
        {
          title: "chana masala",
          prep_time: "45 minutes",
        },
        {
          title: "chocolate chip cookies",
          prep_time: "30 minutes",
        },
      ]
    end

    def ingredients
      Models::Ingredient.all
    end

    def ingredient_attrs
      Models::Ingredient::PUBLIC_ATTRS
    end
  end
end
