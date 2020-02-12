
    Sub TickerCode():

    ' Set title and dimensions
    Dim total As Double
    
    ' Set row titles
    Range("I1").Value = "Ticker"
    Range("J1").Value = "Total Stock Volume"
    
    ' get the row number of the last row by using VBA XLUP
    rowCount = Cells(Rows.Count, "A").End(xlUp).Row

    For i = 2 To rowCount

        ' If ticker changes then print results
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

            ' Stores the results within variable
            total = total + Cells(i, 7).Value

            ' Print ticker symbol
            Range("I" & 2 + j).Value = Cells(i, 1).Value

            ' Print total
            Range("J" & 2 + j).Value = total

            ' Reset Total
            total = 0

            ' Move to next row
            j = j + 1

        ' Else keep adding to the total volume
        Else
            total = total + Cells(i, 7).Value

        End If

    Next i

End Sub



        

