c←+/⎕csv'../input.txt'
⍝ total of command starting with ⍵ after every command
t←{(⍵=(⍕1↑¨c)~' ')×(⍎¨¯1↑¨c)}
(+/t'f')×(+/t'd')-(+/t'u')
(+/t'f')×+/(t'f')×+\(t'd')-(t'u')
