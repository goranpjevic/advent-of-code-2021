i←⍎¨¨⊃⎕nget'../input.txt'1
m←((≢i) (≢⊃i))⍴⊃,/i
m1←¯1↓1⊖m⍪((≢⊃i)⍴9)
m2←((≢⊃i)⍴9)⍪1↓¯1⊖m
m3←⍉(¯1↓1⊖⍉m)⍪((≢i)⍴9)
m4←⍉((≢i)⍴9)⍪1↓¯1⊖⍉m
mask←,⊃∧/(m<⊢)¨m1 m2 m3 m4
+/1+(,m)/⍨mask
b←m<9
it←{
    b1←¯1↓1⊖⍵⍪((≢⊃i)⍴0)
    b2←((≢⊃i)⍴0)⍪1↓¯1⊖⍵
    b3←⍉(¯1↓1⊖⍉⍵)⍪((≢i)⍴0)
    b4←⍉((≢i)⍴0)⍪1↓¯1⊖⍉⍵
    b∧⊃⌈/⍵ b1 b2 b3 b4
}
×/3↑{⍵[⍒⍵]}{≢⍵}⌸0~⍨,(it⍣15)(≢i)(≢⊃i)⍴{(⍵@⍵),b}⍸mask