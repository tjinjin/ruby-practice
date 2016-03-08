begin
  failed ||= 0
  puts 'trying...'

  raise StandardError, 'error!!!'
rescue
  failed += 1

  retry if failed < 5
end
