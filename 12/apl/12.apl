i←'-'(≠⊆⊢)¨⊃⎕nget'test.txt'1
0{s←⊃⌽⍵⋄s≡'end':1⋄p←{⊃⍵/⍨~(s≡⊢)¨⍵}¨i/⍨{∨/(s≡⊢)¨⍵}¨i⋄l←⍵/⍨(∨/(819⌶⎕a)=⊃∘⊢)¨⍵⋄f←p/⍨~{∨/(⊂⍵){⍵≡⍺}¨l}¨p⋄0=⍴f:0⋄+/⍺∇¨(⊂⍵){⍺,⊂⍵}¨f}⊂'start'
0{s←⊃⌽⍵⋄s≡'end':1⋄p←{⊃⍵/⍨~(s≡⊢)¨⍵}¨i/⍨{∨/(s≡⊢)¨⍵}¨i⋄l←⍵/⍨(∨/(819⌶⎕A)=⊃∘⊢)¨⍵⋄f←{1=⌈/+/(⊢∘.≡⊢)l:⍵/⍨~{'start'≡⍵}¨⍵⋄⍵/⍨~{∨/(⊂⍵){⍵≡⍺}¨l}¨⍵}p⋄0=⍴f:0⋄+/⍺∇¨(⊂⍵){⍺,⊂⍵}¨f}⊂'start'
