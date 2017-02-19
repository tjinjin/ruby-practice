array = [4, 5]

case array
when 1
  p "1"
when 2, 3
  p "2, 3"
when 3
  p "3"
when *array
  p "4, 5"
else
  p "other"
end
