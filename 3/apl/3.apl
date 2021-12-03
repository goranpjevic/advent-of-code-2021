n←,⎕csv'input.txt'
⍝ γ binary values
g←⍎⍕1=((≢n)÷2)<+/'1'=n
(2⊥~g)×2⊥g
