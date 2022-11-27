<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkerPayment.aspx.cs" Inherits="House_Utility_Service.UtilityService.WorkerPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h2>Worker Payment</h2>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="workid,workerid" DataSourceID="dsPayment" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
             
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-success btn-sm" ValidationGroup="ge" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ValidationGroup="ge" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:DropDownList  ID="DeptIdDDL"
                                DataSourceID="SqlDataSource2" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workid") %>' DataValueField="workid" DataTextField="workid" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="ge" ControlToValidate="DeptIdDDL" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Batch Code Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList  ID="DropDownList1"
                                DataSourceID="SqlDataSource1" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workerid") %>' DataValueField="workerid" DataTextField="workerid" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="ge" ControlToValidate="DropDownList1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Batch Code Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <img src='<%# Eval("Pictures", "/Uploads/{0}") %>' class="img-thumbnail" style="width:50px" />
                            <asp:FileUpload ValidationGroup="ge" ID="fu" runat="server" />
                            <asp:HiddenField  ID="PictureTextBox" runat="server" Value='<%# Bind("Pictures") %>' />
                            
                        </td>
                        <td>
                            <asp:TextBox ID="totalworkhourTextBox" runat="server" Text='<%# Bind("totalworkhour") %>' />
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="ge" ControlToValidate="totalworkhourTextBox" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="total hours is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="totalpaymentTextBox" runat="server" Text='<%# Bind("totalpayment") %>' />
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="ge" ControlToValidate="totalpaymentTextBox" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="total payment is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
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
                            <asp:Button CssClass="btn btn-success btn-sm" ValidationGroup="gi" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ValidationGroup="gi" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:DropDownList  ID="DeptIdDDL"
                                DataSourceID="SqlDataSource2" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workid") %>' DataValueField="workid" DataTextField="workid" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="gi" ControlToValidate="DeptIdDDL" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Batch Code Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList  ID="DropDownList1"
                                DataSourceID="SqlDataSource1" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workerid") %>' DataValueField="workerid" DataTextField="workerid" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="gi" ControlToValidate="DropDownList1" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Batch Code Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:FileUpload  ID="fu" runat="server" />
                            <asp:HiddenField  ID="PictureTextBox" runat="server" Value='<%# Bind("pictures") %>' />
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="gi" ControlToValidate="fu" CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Picture is Required"></asp:RequiredFieldValidator>
                            
                        </td>
                        <td>
                            <asp:TextBox ID="totalworkhourTextBox" runat="server" Text='<%# Bind("totalworkhour") %>' />
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="gi" ControlToValidate="totalworkhourTextBox" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="total hours is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="totalpaymentTextBox" runat="server" Text='<%# Bind("totalpayment") %>' />
                            <asp:RequiredFieldValidator Display="Dynamic" ValidationGroup="gi" ControlToValidate="totalpaymentTextBox" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="total payment is Required"></asp:RequiredFieldValidator>
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
                            <asp:Label ID="workidLabel" runat="server" Text='<%# Eval("workid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="workeridLabel" runat="server" Text='<%# Eval("workerid") %>' />
                        </td>
                        <td>
                            <img src='<%# Eval("pictures", "/Uploads/{0}") %>' class="img-thumbnail" style="width:50px" />
                        </td>
                        <td>
                            <asp:Label ID="totalworkhourLabel" runat="server" Text='<%# Eval("totalworkhour") %>' />
                        </td>
                        <td>
                            <asp:Label ID="totalpaymentLabel" runat="server" Text='<%# Eval("totalpayment") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered table-success" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">workid</th>
                                        <th runat="server">workerid</th>
                                        <th runat="server">pictures</th>
                                        <th runat="server">totalworkhour</th>
                                        <th runat="server">totalpayment</th>
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
            <asp:SqlDataSource ID="dsPayment" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [workerpayments] WHERE [workid] = @workid AND [workerid] = @workerid" InsertCommand="INSERT INTO [workerpayments] ([workid], [workerid], [pictures], [totalworkhour], [totalpayment]) VALUES (@workid, @workerid, @pictures, @totalworkhour, @totalpayment)" SelectCommand="SELECT * FROM [workerpayments]" UpdateCommand="UPDATE [workerpayments] SET [pictures] =@pictures, [totalworkhour] = @totalworkhour, [totalpayment] = @totalpayment WHERE [workid] = @workid AND [workerid] = @workerid">
                <DeleteParameters>
                    <asp:Parameter Name="workid" Type="Int32" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="workid" Type="Int32" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                    <asp:Parameter Name="pictures" Type="String" />
                    <asp:Parameter Name="totalworkhour" Type="Double" />
                    <asp:Parameter Name="totalpayment" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pictures" Type="String" />
                    <asp:Parameter Name="totalworkhour" Type="Double" />
                    <asp:Parameter Name="totalpayment" Type="Decimal" />
                    <asp:Parameter Name="workid" Type="Int32" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [workers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [works]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
