<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserWorks.ascx.cs" Inherits="House_Utility_Service.UserWorks" %>
 <div class="row">
        <div class="col-12">
            <h2>Works Info</h2>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="workid" DataSourceID="dsWorks" InsertItemPosition="LastItem">
               
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button CssClass="btn btn-success btn-sm" ValidationGroup="ge" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-secondary btn-sm" ValidationGroup="ge" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="workidLabel1" runat="server" Text='<%# Eval("workid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="ge" ID="customenameTextBox" runat="server" Text='<%# Bind("customename") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="customenameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="ge" ID="customeraddressTextBox" runat="server" Text='<%# Bind("customeraddress") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="customeraddressTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList ValidationGroup="ge"  ID="Areaskill"
                                DataSourceID="SqlDataSource1" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workareaid") %>' DataValueField="workareaid" DataTextField="skill" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="Areaskill" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="ge" ID="workdescriptionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("workdescription") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="customenameTextBox" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="ge" ID="startdateTextBox" CssClass="form-control date" runat="server" Text='<%# Bind("startdate") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="workdescriptionTextBox" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="ge" ID="endtimeTextBox" CssClass="form-control date" runat="server" Text='<%# Bind("enddate") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="ge" ControlToValidate="endtimeTextBox" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
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
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ValidationGroup="gi" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"><i class="bi bi-plus"></i> Insert</asp:LinkButton>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ValidationGroup="gi" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear"><i class="bi bi-x"></i> Cancel</asp:LinkButton>
                        </td>
                        <td>[Auto]</td>
                        <td>
                            <asp:TextBox ValidationGroup="gi" ID="customenameTextBox" runat="server" Text='<%# Bind("customename") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="customenameTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="gi" ID="customeraddressTextBox" runat="server" Text='<%# Bind("customeraddress") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="customeraddressTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList ValidationGroup="gi"  ID="Areaskill"
                                DataSourceID="SqlDataSource1" 
                                CssClass="form-select"
                                
                                runat="server" SelectedValue='<%# Bind("workareaid") %>' DataValueField="workareaid" DataTextField="workareaid" AppendDataBoundItems="True">
                                <asp:ListItem Value="" Text="Select one" Selected="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="Areaskill" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="gi" ID="workdescriptionTextBox" runat="server" Text='<%# Bind("workdescription") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="customenameTextBox" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="gi"  CssClass="form-control date" ID="startdateTextBox"  runat="server" Text='<%# Bind("startdate") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="workdescriptionTextBox" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ValidationGroup="gi" CssClass="form-control date" ID="endtimeTextBox" runat="server" Text='<%# Bind("enddate") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="gi" ControlToValidate="endtimeTextBox" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <%--<asp:Button CssClass="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />--%>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="EditButton" runat="server" CommandName="Edit" Text="Edit"><i class="bi bi-pencil">Edit</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="workidLabel" runat="server" Text='<%# Eval("workid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="customenameLabel" runat="server" Text='<%# Eval("customename") %>' />
                        </td>
                        <td>
                            <asp:Label ID="customeraddressLabel" runat="server" Text='<%# Eval("customeraddress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="workareaidLabel" runat="server" Text='<%# Eval("workareaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="workdescriptionLabel" runat="server" Text='<%# Eval("workdescription") %>' />
                        </td>
                        <td>
                            <asp:Label ID="startdateLabel" runat="server" Text='<%# Eval("startdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="endtimeLabel" runat="server" Text='<%# Eval("enddate") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">workid</th>
                                        <th runat="server">Custome Name</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">workareaid</th>
                                        <th runat="server">Description</th>
                                        <th runat="server">StartDate</th>
                                        <th runat="server">EndDate</th>
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
            <asp:SqlDataSource ID="dsWorks" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [works] WHERE [workid] = @workid" InsertCommand="INSERT INTO [works] ([customename], [customeraddress], [workareaid], [workdescription], [startdate], [enddate]) VALUES (@customename, @customeraddress, @workareaid, @workdescription, @startdate, @enddate)" SelectCommand="SELECT * FROM [works]" UpdateCommand="UPDATE [works] SET [customename] = @customename, [customeraddress] = @customeraddress, [workareaid] = @workareaid, [workdescription] = @workdescription, [startdate] = @startdate, [enddate] = @enddate WHERE [workid] = @workid">
                <DeleteParameters>
                    <asp:Parameter Name="workid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="customename" Type="String" />
                    <asp:Parameter Name="customeraddress" Type="String" />
                    <asp:Parameter Name="workareaid" Type="Int32" />
                    <asp:Parameter Name="workdescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="startdate" />
                    <asp:Parameter DbType="Date" Name="enddate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="customename" Type="String" />
                    <asp:Parameter Name="customeraddress" Type="String" />
                    <asp:Parameter Name="workareaid" Type="Int32" />
                    <asp:Parameter Name="workdescription" Type="String" />
                    <asp:Parameter DbType="Date" Name="startdate" />
                    <asp:Parameter DbType="Date" Name="enddate" />
                    <asp:Parameter Name="workid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [workareas]"></asp:SqlDataSource>
        </div>
    </div>