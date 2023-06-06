module Models
  Dir["app/models/**/*.rb"].each(&method(:load))
end

