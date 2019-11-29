<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TaiKhoanKH.aspx.cs" Inherits="TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Danh sách tài khoản khách hàng</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TenTaiKhoan" DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên tài khoản" ReadOnly="True" SortExpression="TenTaiKhoan" />
                <asp:TemplateField HeaderText="Họ tên" SortExpression="HoTen">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("HoTen") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("HoTen") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ" SortExpression="DiaChi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Text='<%# Bind("DiaChi") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DiaChi") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SĐT" SortExpression="SoDienThoai">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Text='<%# Bind("SoDienThoai") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mật khẩu" SortExpression="MatKhau">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Text='<%# Bind("MatKhau") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("MatKhau") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CheckBoxField DataField="Khoa" HeaderText="Khóa" SortExpression="Khoa" />
                <asp:CommandField ButtonType="Button" CancelText="Hủy" EditText="Sửa" HeaderText="Tùy chọn" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [TAI_KHOAN] WHERE [TenTaiKhoan] = @TenTaiKhoan" InsertCommand="INSERT INTO [TAI_KHOAN] ([TenTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [Email], [MatKhau], [Khoa]) VALUES (@TenTaiKhoan, @HoTen, @DiaChi, @SoDienThoai, @Email, @MatKhau, @Khoa)" SelectCommand="SELECT [TenTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [Email], [MatKhau], [Khoa] FROM [TAI_KHOAN] WHERE ([Quyen] = @Quyen)" UpdateCommand="UPDATE [TAI_KHOAN] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai, [Email] = @Email, [MatKhau] = @MatKhau, [Khoa] = @Khoa WHERE [TenTaiKhoan] = @TenTaiKhoan">
            <DeleteParameters>
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SoDienThoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="Khoa" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="kh" Name="Quyen" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SoDienThoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="Khoa" Type="Boolean" />
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <p>
&nbsp; </p>
</asp:Content>

