require "roda"
require "tilt/sass"

require_relative "./app/views"
require_relative "./app/models"
require_relative "./app/repository"

class App < Roda
  plugin :assets,
    css: ["application.scss"],
    js: ["application.js"]

  plugin :render,
    views: "app/templates"

  plugin :link_to

  route do |r|
    r.assets

    r.root do
      @view = Views::Root.new("recipes!!!!", greeting: "hi, how are you?")
      view "root"
    end

    r.get "ingredients" do
      @view = Views::Ingredient::Index.new(r.params)
      view "ingredient/index"
    end

    r.get "ingredients", Integer do |ingredient_id|
      @view = Views::Ingredient::Show.new(ingredient_id)
      view "ingredient/show"
    end
  end
end
