n←,⎕csv'../input.txt'
(2⊥(~⊢)×2⊥⊢)⊃(≢n)<2×+/'1'=n
c←{1≠≢⍵:⍵/⍨⍺⊃¨⍵=⍕(≢⍵)⍺⍺2×+/⍎¨⍺⊃¨⍵⋄⍵}
r←{2⊥'1'=⊃⍎⍕'n',⍨'c',⍨¨⍵,⍨¨⌽⍳≢⊃n}
(r'≤')×r'>'
