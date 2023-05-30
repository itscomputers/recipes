require "roda"
require "tilt/sass"

require_relative "./app/views/root"
require_relative "./app/models/ingredient"
require_relative "./app/repository/ingredient"

class App < Roda
  plugin :assets,
    css: ["application.scss"],
    js: ["application.js"]

  plugin :render,
    views: "app/templates"

  route do |r|
    r.assets

    r.root do
      @view = Views::Root.new("recipes!!!!", greeting: "hi, how are you?")
      view "root"
    end
  end
end
