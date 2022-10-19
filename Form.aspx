<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Laboratorio_7.Form" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        ID
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        Cedula
        <asp:TextBox ID="CedulaText" runat="server"></asp:TextBox>
        <br />
        <br />
        Nombre
        <asp:TextBox ID="NombreText" runat="server"></asp:TextBox>
        <br />
        <br />
        Apellido
        <asp:TextBox ID="ApellidoText" runat="server"></asp:TextBox>
        <br />
        <br />
        Fecha de Nacimiento
        <br />
        <asp:Calendar ID="FnacimientoCalendar" runat="server"></asp:Calendar>
        <br />
        Rango
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Sexo
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="True">Masculino</asp:ListItem>
            <asp:ListItem Value="False">Femenino</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        Fecha de Ingreso
        <br />
        <asp:Calendar ID="FingresoCalendar" runat="server"></asp:Calendar>
        <br />
        Estado
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
 <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="josemirandaalmeyda@hotmail.com">
<input type="hidden" name="lc" value="US">
<input type="hidden" name="item_name" value="zapatos">
<input type="hidden" name="amount" value="1.00">
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="button_subtype" value="services">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="cn" value="Dar instrucciones especiales al vendedor:">
<input type="hidden" name="no_shipping" value="2">
<input type="hidden" name="rm" value="1">
<input type="hidden" name="return" value="https://localhost:44339/Success.aspx">
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
&nbsp;<img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
</form>

        <br />
        <br />
        <br />
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="709px">
            <LocalReport ReportPath="Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetReport" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="lab_7_bd.DataSet1TableAdapters.IraqTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Cedula" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="Rango" Type="String" />
                <asp:Parameter Name="Sexo" Type="Boolean" />
                <asp:Parameter Name="FechaIngreso" Type="DateTime" />
                <asp:Parameter Name="Estado" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cedula" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="FechaNacimiento" Type="DateTime" />
                <asp:Parameter Name="Rango" Type="String" />
                <asp:Parameter Name="Sexo" Type="Boolean" />
                <asp:Parameter Name="FechaIngreso" Type="DateTime" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="Original_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
    </form>
</body>
</html>
