<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkAreas.aspx.cs" Inherits="House_Utility_Service.UtilityService.WorkAreas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <link href="../Content/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <div class="d-flex align-items-center text-primary">
              <span>Loading...</span>
              <div class="spinner-border spinner-border-sm ms-auto" role="status" aria-hidden="true"></div>
            </div>
     </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel clsss="w-100" ID="UpdatePanel1" runat="server" RenderMode="Block">
        <ContentTemplate>
            <div class="row">
        <div class="col-12">
            <h2>WorkAreas</h2>
            <asp:ListView  ID="lvWorkareas" runat="server" DataKeyNames="workareaid" DataSourceID="obsWorareas" InsertItemPosition="LastItem">

                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-success btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="workareaidLabel1" runat="server" Text='<%# Eval("workareaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="areanameTextBox" runat="server" Text='<%# Bind("areaname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-success btn-sm" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="areanameTextBox" runat="server" Text='<%# Bind("areaname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="workareaidLabel" runat="server" Text='<%# Eval("workareaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="areanameLabel" runat="server" Text='<%# Eval("areaname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="skillLabel" runat="server" Text='<%# Eval("skill") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered table-striped table-secondary" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">workareaid</th>
                                        <th runat="server">areaname</th>
                                        <th runat="server">skill</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
             
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [workareas] WHERE [workareaid] = @workareaid" InsertCommand="INSERT INTO [workareas] ([areaname], [skill]) VALUES (@areaname, @skill)" SelectCommand="SELECT * FROM [workareas]" UpdateCommand="UPDATE [workareas] SET [areaname] = @areaname, [skill] = @skill WHERE [workareaid] = @workareaid">
                <DeleteParameters>
                    <asp:Parameter Name="workareaid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="areaname" Type="String" />
                    <asp:Parameter Name="skill" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="areaname" Type="String" />
                    <asp:Parameter Name="skill" Type="String" />
                    <asp:Parameter Name="workareaid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ObjectDataSource ID="obsWorareas" runat="server" DataObjectTypeName="House_Utility_Service.BLL.WorkAreaDTO" DeleteMethod="Delete" InsertMethod="Insert" SelectCountMethod="WorkAreaCount" SelectMethod="GetAll" TypeName="House_Utility_Service.BLL.WorkAreaRepo" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
