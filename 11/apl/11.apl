i←10 10⍴⊃,/⍎¨¨⊃⎕nget'../input.txt'1
stepfun←{
    step←1↑⍺
    flashed←1↓⍺
    step=0:flashed
    onestep←{
        n←10 10⍴((0@(⍸,9<⍵)),⍵+({+/,⍵}⌺3 3)9<⍵)
        0=+/,9<n:(+/,⍺),⊂10 10⍴(0@(⍸,⍺)),n
        (⍺+9<n)∇n
    }
    new←(9<⍵+1)onestep ⍵+1
    ((step-1),(flashed+⊃new))∇⊃2⌷new
}
(100,0)stepfun i
