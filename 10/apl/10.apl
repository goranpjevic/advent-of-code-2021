i←⊃⎕nget'test.txt'1
o←'([{<'
c←')]}>'
icf←{i←1↑⍺⋄l←1↓⍺⋄i>⍴l:' '⋄ci←c⍳i⌷l⋄ci>⍴c:((i+1),l)∇(c[o⍳i⌷l]),⍵⋄(i⌷l)=⊃⍵:((i+1),l)∇ 1↓⍵⋄i⌷l}
ic←' '~⍨{(1,⍵)icf''}¨i
+/⊃+/3 57 1197 25137×(ic=⊢)¨')]}>'
ucf←{i←1↑⍺⋄l←1↓⍺⋄i>⍴l:⊂⍵⋄ci←c⍳i⌷l⋄ci>⍴c:((i+1),l)∇(c[o⍳i⌷l]),⍵⋄(i⌷l)=⊃⍵:((i+1),l)∇ 1↓⍵⋄' '}
co←⊃,/{(1,⍵)ucf''}¨i
total←{(⍴⍵)<1↑⍺:1↓⍺⋄((1+1↑⍺),⍵[1↑⍺]+5×1↓⍺)∇⍵}
⊃{⍵[⌈2÷⍨⍴⍵]}{⍵[⍋⍵]}{1 0total⊃+/(⍳4)×(⍵=⊢)¨')]}>'}¨co/⍨{⊃0<⍴⍵}¨co

