module Models
  class Ingredient
    PUBLIC_ATTRS = [:name, :type]

    def self.all
      Repository::Ingredient.all.values
    end

    def self.fetch(id)
      build(Repository::Ingredient.fetch(id))
    end

    def self.build(db_model)
      Ingredient.new(db_model.name, db_model.type)
    end

    attr_reader *PUBLIC_ATTRS

    def initialize(name, type)
      @name = name
      @type = type
    end
  end
end
