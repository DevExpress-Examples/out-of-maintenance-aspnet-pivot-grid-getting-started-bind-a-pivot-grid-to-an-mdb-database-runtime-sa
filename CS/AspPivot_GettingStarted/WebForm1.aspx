<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspPivot_GettingStarted.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v22.1, Version=22.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" DataSourceID="SqlDataSource1" IsMaterialDesign="False">
                <Fields>
                    <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="Country" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="ProductName" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="Extended_Price" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldSalesPerson" Area="ColumnArea" AreaIndex="1">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="Sales_Person" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                </Fields>
                <OptionsData DataProcessingEngine="Optimized" />
            </dx:ASPxPivotGrid>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT [Country], [ProductName], [CategoryName], [Extended Price] AS Extended_Price, [Sales Person] AS Sales_Person FROM [SalesPerson]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
