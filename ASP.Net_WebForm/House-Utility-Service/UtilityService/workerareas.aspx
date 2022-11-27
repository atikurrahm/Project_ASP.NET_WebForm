<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="workerareas.aspx.cs" Inherits="House_Utility_Service.UtilityService.workerareas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-6">
            <h3 class="display-4" style="text-align:center">Worker Area</h3>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="areaid" DataSourceID="dsAreas" InsertItemPosition="LastItem">
              
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-success btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="areaidLabel1" runat="server" Text='<%# Eval("areaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="divisionTextBox" runat="server" Text='<%# Bind("division") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="workeridTextBox" runat="server" Text='<%# Bind("workerid") %>' />
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
                            <asp:TextBox ID="divisionTextBox" runat="server" Text='<%# Bind("division") %>' />
                        </td>
                        <td>
                            <asp:DropDownList  ID="DeptIdDDL"
                                DataSourceID="SqlDataSource1" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workerid") %>' DataValueField="workerid" DataTextField="workername" AppendDataBoundItems="True">
                                
                            </asp:DropDownList>
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
                            <asp:Label ID="areaidLabel" runat="server" Text='<%# Eval("areaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="divisionLabel" runat="server" Text='<%# Eval("division") %>' />
                        </td>
                        <td>
                            <asp:Label ID="workeridLabel" runat="server" Text='<%# Eval("workerid") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered table-striped" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">Areaid</th>
                                        <th runat="server">Division</th>
                                        <th runat="server">Workerid</th>
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
            <asp:SqlDataSource ID="dsAreas" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [workerareas] WHERE [areaid] = @areaid" InsertCommand="INSERT INTO [workerareas] ([division], [workerid]) VALUES (@division, @workerid)" SelectCommand="SELECT * FROM [workerareas]" UpdateCommand="UPDATE [workerareas] SET [division] = @division, [workerid] = @workerid WHERE [areaid] = @areaid">
                <DeleteParameters>
                    <asp:Parameter Name="areaid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="division" Type="String" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="division" Type="String" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                    <asp:Parameter Name="areaid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [workers]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
