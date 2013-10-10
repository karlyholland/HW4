<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" 
Inherits="_Default" %>  
<!DOCTYPE html> 
 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head id="Head1" runat="server"> 
    <title></title>  
</head> 
<body> 
    <form id="form1" runat="server"> 
    <div>      
    Estimate Net Weekly Pay
         
        <br />
            <p>Please complete the fields below to have your estimated net pay calculated for you.</p>
        
        <br />       
        Hourly Wage: <asp:TextBox ID="tbwageAmount" runat="server" style="margin-left: 86px" Width="128px" ></asp:TextBox>                    
        <asp:RequiredFieldValidator ID="rfvwageAmount" runat="server" ControlToValidate="tbwageAmount" ErrorMessage=
            "** Please enter your hourly wage in dollars."></asp:RequiredFieldValidator>
        
        <br /><br />                
        Hours Worked This Week: <asp:TextBox ID="tbhoursWorked" runat="server" Width="128px" style="margin-left: 3px" ></asp:TextBox>          
        <asp:RequiredFieldValidator ID="rfvhoursWorked" runat="server" ControlToValidate="tbhoursWorked" ErrorMessage=
            "** Please enter the number of hours worked this week."></asp:RequiredFieldValidator>
        
        <br /><br /> 
        Pre-Tax Deductions: <asp:TextBox ID="tbpreTax" runat="server" style="margin-left: 41px" Width="128px" ></asp:TextBox>          
        <asp:RequiredFieldValidator ID="rfvpreTax" runat="server" ControlToValidate="tbpreTax" ErrorMessage=
            "** Please enter any pre-tax deductions. If no deductions, please enter '0'."></asp:RequiredFieldValidator>
        
        <br /><br /> 
        After-Tax Deductions: <asp:TextBox ID="tbafterTax" runat="server" style="margin-left: 31px" Width="128px" ></asp:TextBox>          
        <asp:RequiredFieldValidator ID="rfvafterTax" runat="server" ControlToValidate="tbafterTax" ErrorMessage=
            "** Please enter any after-tax deductions. If no deductions, please enter '0'."></asp:RequiredFieldValidator>
        
        <br /><br /> 
        <asp:Button ID="btnCalcPay" runat="server" Text="Calculate" style="margin-left: 174px" Width="128px" />          
        
        <br /><br />
        Net Pay: &nbsp; <span class="bold"></span><asp:Label ID="lblNetPay" runat="server"></asp:Label> 
       
        </div> 
    </form> 
</body> 
</html> 
