c←,⎕csv'../input.txt'
⍝ value of command starting with ⍵, otherwise 0
v←{(⍵=⊃¨c)×⍎¨¯1↑¨c}
(+/v'f')×(+/v'd')-+/v'u'
(+/v'f')×+/(v'f')×+\(v'd')-v'u'
