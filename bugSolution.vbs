Function MyFunction(param1, param2)
  ' Explicit type checking using IsNumeric
  If IsNumeric(param1) And IsNumeric(param2) Then
    Result = CDbl(param1) + CDbl(param2) ' Explicit type conversion to Double
  Else
    Err.Raise vbError, , "Invalid input: parameters must be numeric." ' Raise error for better handling
  End If
  MyFunction = Result
End Function

' Example usage (demonstrates error handling):
On Error GoTo ErrorHandler

Dim result1: result1 = MyFunction(10, 20) ' Correct usage
MsgBox "Result 1: " & result1

Dim result2: result2 = MyFunction("abc", 20) ' Incorrect usage
MsgBox "Result 2: " & result2

Exit Sub

ErrorHandler:
MsgBox "Error: " & Err.Description
End