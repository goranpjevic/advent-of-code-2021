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
resultsone←(value¨⍉¨boards),(value¨boards)
⍝ minimum index of the last drawn number
minindex←⌊/⊃¨resultsone
2⌷⊃(⊃⍸{minindex=⊃⍎⍕⍵:2⌷⍵⋄0}¨resultsone)⌷resultsone

⍝ smallest of the value of ⍵ and ⍉⍵
smallest←{{⊃⍺>⊃⍵:⍵⋄⍺}/value¨(⊆⍵),⊆⍉⍵}
⍝ results of all the boards and transposed boards
resultstwo←smallest¨boards
⍝ maximum index of the last drawn number
maxindex←⊃⍎⍕⌈/resultstwo
2⌷⍎⍕(({⊃⍎⍕⍵}¨resultstwo)⍳81)⌷resultstwo
