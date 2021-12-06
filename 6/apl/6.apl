i←⍎¨','(≠⊆⊢)⊃⊃⎕NGET'../input.txt'1
counts←{+/i=⍵}¨(1-⍨⍳9)
it←{
    next←(1⊖⍵)+((6⍴0),⊃⍵,0 0)
    ⍺=1:next
    (⍺-1)∇ next
}
⎕PP←34
{+/⍵it counts}¨80 256
