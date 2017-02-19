class Duration
  attribute_names = %w[days hours minutes secondes]
  p attribute_names # %w[days hours minutes secondes]
  attribute_names.each do |name|
    attr_accessor name
  end
end

p attribute_names
