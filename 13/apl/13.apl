i←','(≠⊆⊢)¨⊃⎕nget'test.txt'1
mask←(⍎⍕)¨2=⍴¨i
p←⍎¨¨mask/i
f←⊃¨1↓(~mask)/i
xmax←1+⌈/{1⊃⍵}¨p
ymax←1+⌈/{2⊃⍵}¨p
dir←1↑⊃⌽' '(≠⊆⊢)1⊃f
ind←2↓⊃⌽' '(≠⊆⊢)1⊃f
m←{dir='x':⍉⍵⋄⍵}ymax xmax⍴(1@((1+1⊃⊢+xmax×2⊃⊢)¨p))0⍴⍨xmax×ymax
+/,0<((⍎ind)↑m)+⊖1↓(⍎ind)↓m
