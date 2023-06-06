module Repository
  Dir["app/repository/**/*.rb"].each(&method(:load))
end

