i←⊃⎕nget'input.txt'1
⍝ drawn numbers
d←','(≠⊆⊢)⊃i
all←6{⍺,' ',⍵}/(1↓i)
mask←(¯6+≢i)⍴(1,5⍴0)
⍝ all boards
boards←{5 5⍴⍎⍵}¨mask/all
⍝ index of the last drawn number and the score of ⍵
⍝ only rows are considered
value←{
  index←1{(⍴(5⍴1)/⍨5=+/⍵∊⍎¨⍺↑d)=1:⍺ ⋄ (⍺+1)∇ ⍵}⍵
  sum←+/(,⍵)/⍨,~⍵∊⍎¨index↑d
  last←index⌷d
  index(sum×⍎⍕last)
}
⍝ results of all the boards and transposed boards
results←(value¨⍉¨boards),(value¨boards)
⍝ minimum index of the last drawn number
minindex←⌊/⊃¨results
2⌷⊃(⊃⍸{minindex=⊃⍎⍕⍵:2⌷⍵⋄0}¨results)⌷results
