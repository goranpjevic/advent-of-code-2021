m←⍎⍕+/⎕csv'../input.txt'
one←{+/0>2-/⍵}
two←{one 3+/⍵}
one m
two m
