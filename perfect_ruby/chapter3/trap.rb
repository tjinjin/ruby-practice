# シグナルの扱い
trap :INT do
  puts "\nInterrupted!"
  exit
end

loop do
  sleep 1
end
