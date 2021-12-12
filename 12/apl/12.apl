i←'-'(≠⊆⊢)¨⊃⎕nget'test.txt'1
got←{
    s←⊃⌽⍵
    s≡'end':1
    p←{⊃⍵/⍨~(s≡⊢)¨⍵}¨i/⍨{∨/(s≡⊢)¨⍵}¨i
    l←⍵/⍨(∨/'abcdefghijklmnopqrstuvwxyz'=⊃∘⊢)¨⍵
    f←p/⍨~{∨/(⊂⍵){⍵≡⍺}¨l}¨p
    0=⍴f:0
    vv←(⊂⍵){⍺,⊂⍵}¨f
    +/⍺ ∇¨vv
}
0got⊂'start'
