c←+/⎕csv'../input.txt'
⍝ total of command starting with ⍵
t←{+/(⍵=(⍕1↑¨c)~' ')/(⍎¨¯1↑¨c)}
(t'f')×(t'd')-(t'u')
⍝ total of command starting with ⍵ after every command
r←{(⍵=(⍕1↑¨c)~' ')×(⍎¨¯1↑¨c)}
(t'f')×+/(r'f')×+\(r'd')-(r'u')
