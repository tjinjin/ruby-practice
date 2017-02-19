p "a,bb,ccc, dddd".split(/,\s?/)
p "a,bb,ccc, dddd".split(/,/)
p "a,bb,ccc, dddd".split(/,?/)
p "a,bb,ccc, dddd".split(//)

# ["a", "bb", "ccc", "dddd"]
# ["a", "bb", "ccc", " dddd"]
# ["a", "b", "b", "c", "c", "c", " ", "d", "d", "d", "d"]
# ["a", ",", "b", "b", ",", "c", "c", "c", ",", " ", "d", "d", "d", "d"]
