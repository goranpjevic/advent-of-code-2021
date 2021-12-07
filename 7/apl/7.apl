i←⍎¨,⎕csv'test.txt'
sortedlist←i[⍋i]
⌊/{+/|sortedlist-⍵}¨((⊃sortedlist)+1-⍨⍳⊃⌽(sortedlist+1))
