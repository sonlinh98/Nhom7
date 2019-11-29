<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ThongTinTaiKhoan.aspx.cs" Inherits="ThongTinTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Thông tin tài khoản</h1>
    <p>
        <asp:SqlDataSource ID="sqlDsThongtintaikhoan" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString2 %>" DeleteCommand="DELETE FROM [TAI_KHOAN] WHERE [TenTaiKhoan] = @TenTaiKhoan" InsertCommand="INSERT INTO [TAI_KHOAN] ([TenTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [Email], [MatKhau], [Quyen]) VALUES (@TenTaiKhoan, @HoTen, @DiaChi, @SoDienThoai, @Email, @MatKhau, @Quyen)" SelectCommand="SELECT * FROM [TAI_KHOAN] WHERE ([TenTaiKhoan] = @TenTaiKhoan)" UpdateCommand="UPDATE [TAI_KHOAN] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai, [Email] = @Email, [MatKhau] = @MatKhau, [Quyen] = @Quyen WHERE [TenTaiKhoan] = @TenTaiKhoan">
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
                <asp:Parameter Name="Quyen" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="TenTaiKhoan" SessionField="TenDangNhap" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SoDienThoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="Quyen" Type="String" />
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="text-left">
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="15" DataKeyNames="TenTaiKhoan" DataSourceID="sqlDsThongtintaikhoan" GridLines="Both" Width="100%">
            <EditItemTemplate>
                <br />
                <table class="w-100">
                    <tr>
                        <td>Tên tài khoản</td>
                        <td>
                            <asp:Label ID="TenTaiKhoanLabel1" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên</td>
                        <td>
                            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="HoTenTextBox" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DiaChiTextBox" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>
                            <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SoDienThoaiTextBox" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MatKhauTextBox" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Quyền</td>
                        <td>
                            <asp:TextBox ID="QuyenTextBox" runat="server" Text='<%# Bind("Quyen") %>' ReadOnly="True" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <InsertItemTemplate>
                TenTaiKhoan:
                <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" Text='<%# Bind("TenTaiKhoan") %>' />
                <br />
                HoTen:
                <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SoDienThoai:
                <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                MatKhau:
                <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                <br />
                Quyen:
                <asp:TextBox ID="QuyenTextBox" runat="server" Text='<%# Bind("Quyen") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <table class="w-100">
                    <tr>
                        <td>Tên tài khoản</td>
                        <td>
                            <asp:Label ID="TenTaiKhoanLabel" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Họ tên</td>
                        <td>
                            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ</td>
                        <td>
                            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Số điện thoại</td>
                        <td>
                            <asp:Label ID="SoDienThoaiLabel" runat="server" Text='<%# Bind("SoDienThoai") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td>
                            <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Quyền</td>
                        <td>
                            <asp:Label ID="QuyenLabel" runat="server" Text='<%# Bind("Quyen") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa thông tin" />
                &nbsp;&nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:FormView>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>

