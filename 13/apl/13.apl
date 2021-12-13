i←','(≠⊆⊢)¨⊃⎕nget'../input.txt'1
mask←(⍎⍕)¨2=⍴¨i
p←⍎¨¨mask/i
f←⊃¨1↓(~mask)/i
xmax←1+⌈/{1⊃⍵}¨p
ymax←1+⌈/{2⊃⍵}¨p
m←ymax xmax⍴(1@((1+1⊃⊢+xmax×2⊃⊢)¨p))0⍴⍨xmax×ymax
fold←{d←⊃⌽' '(≠⊆⊢)⊃⊃⍵⋄t←{'x'=1↑d:⍉⍵⋄⍵}⋄(⊂1↓⊃⍵),⊂0<t{((⍎2↓d)↑⍵)+⊖1↓(⍎2↓d)↓⍵}t 2⊃⍵}
+/,2⊃fold(⊂f),⊂m
2⊃(fold⍣(≢f))(⊂f),⊂m
