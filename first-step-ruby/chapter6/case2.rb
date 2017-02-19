case
when number.prime?   then process_prime(number)
when number.fermat?  then process_camichel(number)
when number.odd?     then process_odd_composite(number)
else                      process_even_composite(number)
end
