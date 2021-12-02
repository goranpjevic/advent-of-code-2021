c←+/⎕csv'../input.txt'
⍝ total of command starting with ⍵
t←{+/(⍵=(⍕1↑¨c)~' ')/(⍎¨¯1↑¨c)}
(t'f')×(t'd')-(t'u')
