i←'-'(≠⊆⊢)¨⊃⎕nget'../input.txt'1
n←{s←⊃⌽⍵⋄s≡'end':1⋄p←{⊃⍵/⍨~(s≡⊢)¨⍵}¨i/⍨{∨/(s≡⊢)¨⍵}¨i⋄l←⍵/⍨(∨/(819⌶⎕a)=⊃∘⊢)¨⍵⋄f←p/⍨~(('start'≡⊢)¨p)∨(∨/p∘.≡l)×1⍺⍺⌈/+/(⊢∘.≡⊢)l⋄0=⍴f:0⋄+/∇¨(⊂⍵){⍺,⊂⍵}¨f}
{(⍎⍵)n⊂'start'}¨'=<'
