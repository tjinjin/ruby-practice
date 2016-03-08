begin
  raise LoadError, 'load error'
rescue LoadError => e
  puts "Load Error #{e.message}"
rescue ArgumentError => e
  puts "Argument Error #{e.message}"
rescue RuntimeError, NameError => e
  puts "Multiple Excepctions"
end
