<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Workers.aspx.cs" Inherits="House_Utility_Service.UtilityService.Workers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <link href="../Content/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h2>Workers Info</h2>
        </div>
        <div class="col-6">
            <h2>Edit/Delete</h2>
            <asp:GridView CssClass="table table-bordered table-striped table-success" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="workerid" DataSourceID="dsWorkers">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-success btn-sm" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"><i class="bi bi-save">Save</i></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="bi bi-x"></i>Cancel</asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"><i class="bi bi-pencil">Edit</i></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"><i class="bi bi-trash">Delete</i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="workerid" HeaderText="workerid" InsertVisible="False" ReadOnly="True" SortExpression="workerid" />
                    <asp:BoundField DataField="workername" HeaderText="workername" SortExpression="workername" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="payrate" HeaderText="payrate" SortExpression="payrate" />
                    <asp:CheckBoxField DataField="available" HeaderText="available" SortExpression="available" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsWorkers" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [workers] WHERE [workerid] = @workerid" InsertCommand="INSERT INTO [workers] ([workername], [phone], [payrate], [available]) VALUES (@workername, @phone, @payrate, @available)" SelectCommand="SELECT * FROM [workers]" UpdateCommand="UPDATE [workers] SET [workername] = @workername, [phone] = @phone, [payrate] = @payrate, [available] = @available WHERE [workerid] = @workerid">
                <DeleteParameters>
                    <asp:Parameter Name="workerid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="workername" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="payrate" Type="Decimal" />
                    <asp:Parameter Name="available" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="workername" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="payrate" Type="Decimal" />
                    <asp:Parameter Name="available" Type="Boolean" />
                    <asp:Parameter Name="workerid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-6">
            <h2>Add New</h2>
            <asp:FormView CssClass="table table-bordered table-striped table-success" ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="workerid" DataSourceID="dsWorkers">
                <EditItemTemplate>
                    workerid:
                    <asp:Label ID="workeridLabel1" runat="server" Text='<%# Eval("workerid") %>' />
                    <br />
                    workername:
                    <asp:TextBox ID="workernameTextBox" runat="server" Text='<%# Bind("workername") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    payrate:
                    <asp:TextBox ID="payrateTextBox" runat="server" Text='<%# Bind("payrate") %>' />
                    <br />
                    available:
                    <asp:CheckBox ID="availableCheckBox" runat="server" Checked='<%# Bind("available") %>' />
                    <br />
                    <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-form-label-sm col-3">Branch Name</label>
                        <div class="col-9">
                            <asp:TextBox ValidationGroup="fv-in" CssClass="form-control form-control-sm" ID="branchNameTextBox" runat="server" Text='<%# Bind("workername") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="fv-in" CssClass="text-danger err" ID="RequiredFieldValidator3" ControlToValidate="branchNameTextBox"  runat="server" ErrorMessage="worker name is required"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-form-label-sm col-3">Phone</label>
                        <div class="col-9">
                            <asp:TextBox ValidationGroup="fv-in" CssClass="form-control form-control-sm" ID="TextBox1" runat="server" Text='<%# Bind("phone") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="fv-in" CssClass="text-danger err" ID="RequiredFieldValidator1" ControlToValidate="branchNameTextBox"  runat="server" ErrorMessage="phone is required"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="form-group row mb-1">
                        <label class="col-form-label col-form-label-sm col-3">payrate</label>
                        <div class="col-9">
                            <asp:TextBox ValidationGroup="fv-in" CssClass="form-control form-control-sm" ID="TextBox2" runat="server" Text='<%# Bind("payrate") %>' />
                            <asp:RequiredFieldValidator ValidationGroup="fv-in" CssClass="text-danger err" ID="RequiredFieldValidator2" ControlToValidate="branchNameTextBox"  runat="server" ErrorMessage="phone is required"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    available:
                    <asp:CheckBox ID="availableCheckBox" runat="server" Checked='<%# Bind("available") %>' />
                    <br />
                    <asp:LinkButton CssClass="btn btn-success btn-sm" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"><i class="bi bi-plus-circle"></i> Insert</asp:LinkButton>
                    &nbsp;<asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="bi bi-x"></i> Cancel</asp:LinkButton>
                </InsertItemTemplate>
                <ItemTemplate>
                    workerid:
                    <asp:Label ID="workeridLabel" runat="server" Text='<%# Eval("workerid") %>' />
                    <br />
                    workername:
                    <asp:Label ID="workernameLabel" runat="server" Text='<%# Bind("workername") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    payrate:
                    <asp:Label ID="payrateLabel" runat="server" Text='<%# Bind("payrate") %>' />
                    <br />
                    available:
                    <asp:CheckBox ID="availableCheckBox" runat="server" Checked='<%# Bind("available") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton CssClass="btn btn-secondary btn-sm" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>
