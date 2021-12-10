i←'|'(≠⊆⊢)¨⎕csv'../input.txt'
+/∊((+/2 3 4 7=⍴)¨' '(≠⊆⊢)⊃)¨1↓¨i
all←'abcefg' 'cf' 'acdeg' 'acdfg' 'bcdf' 'abdfg' 'abdefg' 'acf' 'abcdefg' 'abcdfg'
decode←{
    l←{⍵[⍋⍴¨⍵]}' '(≠⊆⊢)⊃⍵
    a←(⊃2⌷l)~(⊃1⌷l)
    bd←(⊃3⌷l)~(⊃1⌷l)
    b←⊃∩/{(⊃⍵⌷l)∩bd}¨7 8 9
    d←bd~b
    g←⊃a~⍨¨{⍵[⍋⍴¨⍵]}{(⊃⍵⌷l)~(⊃3⌷l)}¨7 8 9
    s789←{⍵[⍋⍴¨⍵]}{(⊃⍵⌷l)∩(⊃1⌷l)}¨7 8 9
    f←⊃s789
    c←f~⍨⊃2⌷s789
    e←'abcdefg'~a,b,c,d,f,g
    sa←{⍵[⍋⍵]}¨(⍎⍕)¨{⍕⍺,',',⍕⍵}/¨all
    v←{⍵[⍋⍵]}¨' '(≠⊆⊢)⊃⌽⍵
    10⊥(⍎⍕)¨1-⍨{⍸(⍵≡⊢)¨sa}¨v
}
+/,decode¨i
