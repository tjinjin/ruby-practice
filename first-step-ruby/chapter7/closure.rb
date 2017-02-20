def create_counter
  count = 1
  return Proc.new do
    count += 1
    p count
  end
end

counter = create_counter
p counter.class
counter.call
counter.call

counter2 = create_counter
p counter2.class
counter2.call
counter2.call
