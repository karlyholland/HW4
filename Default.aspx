<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" 
Inherits="_Default" %>  
<!DOCTYPE html> 
 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head id="Head1" runat="server"> 
    <title>Pay Calculator</title>  
    <link rel="stylesheet" type="text/css" href="./stylesheet.css" />
</head> 
<body> 
    <form id="form1" runat="server"> 
    <div>      
    <h1>Estimate Your Net Weekly Pay</h1>
       
            <p>Please complete the fields below to have your estimated net pay calculated for you.</p>
        
        <br />       
        Hourly Wage: <asp:TextBox ID="tbwageAmount" runat="server" style="margin-left: 83px" Width="128px" ></asp:TextBox>                    
        <div class="rfv">
        <asp:RequiredFieldValidator ID="rfvwageAmount" runat="server" ControlToValidate="tbwageAmount" ErrorMessage=
            "** Please enter your hourly wage in dollars." SetFocusOnError="True"></asp:RequiredFieldValidator></div>
        
        <br />               
        Hours Worked This Week: <asp:TextBox ID="tbhoursWorked" runat="server" Width="128px" style="margin-left: 2px" ></asp:TextBox>          
        <div class="rfv"> 
        <asp:RequiredFieldValidator ID="rfvhoursWorked" runat="server" ControlToValidate="tbhoursWorked" ErrorMessage=
            "** Please enter the number of hours worked this week."></asp:RequiredFieldValidator></div>
        
        <br />
        Pre-Tax Deductions: <asp:TextBox ID="tbpreTax" runat="server" style="margin-left: 41px" Width="128px" ></asp:TextBox>          
        <div class="rfv"> 
        <asp:RequiredFieldValidator ID="rfvpreTax" runat="server" ControlToValidate="tbpreTax" ErrorMessage=
            "** Please enter any pre-tax deductions. If no deductions, please enter '0'."></asp:RequiredFieldValidator></div>
        
        <br /> 
        After-Tax Deductions: <asp:TextBox ID="tbafterTax" runat="server" style="margin-left: 31px" Width="128px" ></asp:TextBox>          
        <div class="rfv">
        <asp:RequiredFieldValidator ID="rfvafterTax" runat="server" ControlToValidate="tbafterTax" ErrorMessage=
            "** Please enter any after-tax deductions. If no deductions, please enter '0'."></asp:RequiredFieldValidator></div>
        
        <br /><br /> 
        <asp:Button ID="btnClear" runat="server" Text="Clear" style="margin-left: 22px" Width="128px" />          
        
        <asp:Button ID="btnCalcPay" runat="server" Text="Calculate" style="margin-left: 21px" Width="128px" />          
        
        <br /><br />
        <div class="netpay">
        Net Pay: &nbsp; <span class="bold"></span><asp:Label ID="lblNetPay" runat="server"></asp:Label> 
        </div>
        </div> 
        <p>
            &nbsp;</p>
    </form> 
</body> 
</html> 
