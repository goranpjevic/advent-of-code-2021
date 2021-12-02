c←,⎕csv'../input.txt'
⍝ value of command starting with ⍵, otherwise 0
t←{(⍵=1↑¨c)×⍎¨¯1↑¨c}
(+/t'f')×(+/t'd')-+/t'u'
(+/t'f')×+/(t'f')×+\(t'd')-t'u'
