i←⊃⎕nget'../input.txt'1
⍝ all 4 numbers from each line
values←{⍎⍕⍵}¨{','(≠⊆⊢)⍵}¨{⍵~'->'}¨i
⍝ only vertical and horizontal values
vhvalues←values/⍨{(((1⌷⍵)=(3⌷⍵))∨((2⌷⍵)=(4⌷⍵))):1 ⋄ 0}¨values
⍝ get all xs and ys
xs←{⍵{(1⌷⍺)>(3⌷⍺):⌽⍵⋄⍵}(1-⍨(1⌷⍵)⌊(3⌷⍵))+⍳(1+|(1⌷⍵)-(3⌷⍵))}
ys←{⍵{(2⌷⍺)>(4⌷⍺):⌽⍵⋄⍵}(1-⍨(2⌷⍵)⌊(4⌷⍵))+⍳(1+|(2⌷⍵)-(4⌷⍵))}
⍝ count how many pairs of indices repeat more than once
{≢1~⍨{≢⍵}⌸⊃,/{(xs⍵),¨ys⍵}¨⍵}¨(vhvalues)(values)
