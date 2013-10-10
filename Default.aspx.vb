Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    'Adapted from the loan calculator found at  
    'www.dreamincode.net/forums/topic/237228-looping-issues-using-a-grid-for-mortgage-calculator-amortization/  

    Protected Sub btnCalcPay_Click(sender As Object, e As EventArgs) Handles btnCalcPay.Click

        'Declare variables for each field
        Dim wageAmount As Double
        Dim hoursWorked As Double
        Dim grossPay As Double
        Dim preTax As Double
        Dim afterTax As Double
        Dim netPay As Double

        'This Section Converts each input string to the appropriate variable assigned.
        wageAmount = CDbl(tbwageAmount.Text)
        hoursWorked = CDbl(tbhoursWorked.Text)
        preTax = CDbl(tbpreTax.Text)
        afterTax = CDbl(tbafterTax.Text)

        'Format inputs to currency
        tbwageAmount.Text = FormatCurrency(wageAmount)
        tbpreTax.Text = FormatCurrency(preTax)
        tbafterTax.Text = FormatCurrency(afterTax)

        'Multiply hourly wage by hours worked
        grossPay = wageAmount * hoursWorked

        If grossPay < 500 Then
            netPay = (grossPay - preTax) * (1 - 0.18) - afterTax
        Else : netPay = (grossPay - preTax) * (1 - 0.22) - afterTax
        End If

        'Display net pay and convert to cuurency
        lblNetPay.Text = FormatCurrency(netPay)

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbwageAmount.Focus()
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        tbwageAmount.Text = ""
        tbhoursWorked.Text = ""
        tbpreTax.Text = ""
        tbafterTax.Text = ""
        lblNetPay.Text = ""
    End Sub

    Protected Sub tbafterTax_TextChanged(sender As Object, e As EventArgs)

    End Sub

End Class