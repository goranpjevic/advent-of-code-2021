v←{+/(⊃¨r)∘.≡2,/(⊃,/⍵)[1 3 2]}¨r←{(⊂2↑⍵),⊂(7⌷⍵)}¨2↓i←⊃⎕nget'../input.txt'1
⎕pp←32
step←{(⊃(+/v×⊢))⍣⍵+/(⊃¨r)∘.≡2,/⊃i}
s←{(1,step⍵)×0.5+((=/2↑¯1⌽⊃i),=/⍥⊃¨r)×0.5}
d←{(⊂⍵⍳2↑¯1⌽⊃i),(⍵⍳⊢)¨⊃¨r}1↓∪⍕r
{(⌈/-⌊/)⊃+/(s⍵){(⍺@⍵)(≢1↓∪⍕r)⍴0}¨d}¨10 40
