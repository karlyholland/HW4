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
    Karly's Mortgage Calculator 
         
        <br /><br />       
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>                    
        <asp:RequiredFieldValidator ID="rfvLoanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="** Please enter a loan amount."></asp:RequiredFieldValidator>
        <br /><br />                
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>          
        <asp:RequiredFieldValidator ID="rfvAnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="** Please enter an interest amount."></asp:RequiredFieldValidator>
        <br /><br /> 
 
        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>          
        <asp:RequiredFieldValidator ID="rfvLoanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="** Please enter a loan term in years."></asp:RequiredFieldValidator>
        <br /><br /> 
 
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />          
        <br /><br /> 
        
        <% If Not IsPostBack Then%>
            <p>Welcome to my mortgage calculator.  Please complete the fields above to have your monthly payment and loan calculated for you.</p>
        <% Else%>
            <br />

        Monthly Payment: &nbsp; <span class="bold"></span><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label> 
         
        <br /><br />          
        <asp:GridView ID="loanGridView" runat="server" />  
        <% End If%>            
        </div> 
    </form> 
</body> 
</html> 
