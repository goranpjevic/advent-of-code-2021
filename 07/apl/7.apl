i←⍎¨⎕csv'../input.txt'
⌊/{+/|i-⍵}¨0,⍳⌈/i
⌊/{+/+/¨⍳¨|i-⍵}¨0,⍳⌈/i