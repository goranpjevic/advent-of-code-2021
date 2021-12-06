i←⍎¨','(≠⊆⊢)⊃⊃⎕NGET'../input.txt'1
it←{
    ⍝ ⍺: index ; ⍵: state
    zeroes←0=⍵
    next←(zeroes+1-⍨⍵+6×zeroes),(+/zeroes)⍴8
    ⍺=1:next
    (⍺-1)∇ next
}
≢80it i
