v←{+/(⊃¨r)∘.≡2,/(⊃,/⍵)[1 3 2]}¨r←{(⊂2↑⍵),⊂(7⌷⍵)}¨2↓i←⊃⎕nget'test.txt'1
step←{(⊃(+/v×⊢))⍣⍵+/(⊃¨r)∘.≡2,/⊃i}
{(⌈/-⌊/)⊃+/((1,step⍵)×(0.5+0.5×=/2↑¯1⌽⊃i),(=/⍥⊃¨r)+(~=/⍥⊃¨r)×0.5){(⍺@⍵)(≢∪((⊃,/)⍣2)r)⍴0}¨{(⊂⍵⍳2↑¯1⌽⊃i),(⍵⍳⊢)¨⊃¨r}∪((⊃,/)⍣2)r}¨10 40
