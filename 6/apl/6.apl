i←⍎¨','(≠⊆⊢)⊃⊃⎕NGET'../input.txt'1
⎕PP←34
{+/(⊃(+@7)1∘⊖)⍣⍵(+/i=⊢)¨0,⍳8}¨80 256
