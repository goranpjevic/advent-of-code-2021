n←,⎕csv'../input.txt'
g←⍎⍕(≢n)<2×+/'1'=n
(2⊥~g)×2⊥g
⍝ criteria
c←{1≠≢⍵:⍵/⍨⍺⊃¨⍵=⍕(≢⍵)⍺⍺2×+/⍎¨⍺⊃¨⍵⋄1=≢⍵:⍵}
⍝ make recursive string
r←{⍵≥1:⍵⍺'c',⍺r⍵-1⋄⍵<1:' n'}
(2⊥'1'=⊃⍎⍕'≤'r≢⊃n)×2⊥'1'=⊃⍎⍕'>'r≢⊃n
