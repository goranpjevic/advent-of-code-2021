i←⊃⎕nget'../input.txt'1
⍝ all 4 numbers from each line
values←{⍎⍕⍵}¨{','(≠⊆⊢)⍵}¨{⍵~'->'}¨i
⍝ maximum value of numbers
max←⌈/⊃⌈/{⍎⍕⍵}¨values
⍝ max × max grid of zeroes
grid←max max⍴0
⍝ add ones to the rows or columns
add←{
     repeat←⊃(2 2⍴⍵)/⍨=/⍉2 2⍴⍵
     ⍝ indices where ones are to be added
     ⍝ for horizontal lines
     hi←((max×repeat-1)+(1-⍨(1⌷⍵)⌊(3⌷⍵))+⍳(1+|(1⌷⍵)-(3⌷⍵)))
     ⍝ for vertical lines
     vi←((max×repeat-1)+(1-⍨(2⌷⍵)⌊(4⌷⍵))+⍳(1+|(2⌷⍵)-(4⌷⍵)))
     (2⌷⍵)=(4⌷⍵):({1+⍵}@hi),grid
     (1⌷⍵)=(3⌷⍵):,⍉(max max)⍴({1+⍵}@vi),⍉grid
     (max×max)⍴0
}
⍝ final grid of numbers
finalgrid←{⍵>≢values:(max×max)⍴0 ⋄ (add⍎⍕(⍵⌷values))+(∇(⍵+1))}1
+/2≤finalgrid

⍝ get all xs and ys
xs←{⍵{(1⌷⍺)>(3⌷⍺):⌽⍵⋄⍵}(1-⍨(1⌷⍵)⌊(3⌷⍵))+⍳(1+|(1⌷⍵)-(3⌷⍵))}
ys←{⍵{(2⌷⍺)>(4⌷⍺):⌽⍵⋄⍵}(1-⍨(2⌷⍵)⌊(4⌷⍵))+⍳(1+|(2⌷⍵)-(4⌷⍵))}
⍝ count how many pairs of indices repeat more than once
≢1~⍨{≢⍵}⌸⊃,/{(xs⍵),¨ys⍵}¨values
