m←+/⎕CSV'../input.txt' 'UTF-8'2
one←{+/0>2-/⍵}
two←{one 3+/⍵}
one m
two m
