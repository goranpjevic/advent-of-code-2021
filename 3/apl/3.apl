n←,⎕csv'input.txt'
⍝ γ binary values
g←⍎⍕1=((≢n)÷2)<+/'1'=n
(2⊥~g)×2⊥g
⍝ criteria
c←{1≠≢⍵:⍵/⍨(((≢⍵)÷2)⍺⍺+/1=⍎¨⍕((⍺+1)⊃¨⍵))=⍎⍕1↑¨⍺↓¨⍵⋄1=≢⍵:⍵}
⍝ make recursive string
r←{⍵≥0:⍵,⍺,'criteria',⍺r⍵-1⋄⍵<0:' n'}
(2⊥⍎⍕'1'=⍎⍕'≤'r((≢⊃n)-1))×2⊥⍎⍕'1'=⍎⍕'>'r((≢⊃n)-1)
