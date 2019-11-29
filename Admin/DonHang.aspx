<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="DonHang.aspx.cs" Inherits="DonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {
            for (var i = 0; i < 20; i++) {
                var x = "x" + i;
                x = document.getElementById("ContentPlaceHolder1_GridView1_Label6_"+i+"");
                var button = "button"+i;
                button = document.getElementById("ContentPlaceHolder1_GridView1_btnSua_" + i + "");
                if (x.innerText==null) {
                    return;
                }
                else if (x.innerText==="Hoàn thành") {
                    button.setAttribute("disabled", "true");
                }
            }
        });
       
    </script>
    <p></p>
    <br />
    <h1>Danh sách đơn hàng</h1>
    <p>
        &nbsp;</p>
    <p class="text-justify" style="margin-left: 40px">
        <strong>
        <asp:Label ID="Label12" runat="server" Text="Trạng thái đơn hàng:" style="font-size: large"></asp:Label>
        </strong>
        <asp:DropDownList ID="ddlTrangthaidonhang" runat="server" AutoPostBack="True" Height="28px" Width="300px" OnSelectedIndexChanged="ddlTrangthaidonhang_SelectedIndexChanged">
            <asp:ListItem>Tạo đơn hàng</asp:ListItem>
            <asp:ListItem>Đang xử lý</asp:ListItem>
            <asp:ListItem>Bị hủy bỏ</asp:ListItem>
            <asp:ListItem>Hoàn lại</asp:ListItem>
            <asp:ListItem>Hoàn thành</asp:ListItem>
        </asp:DropDownList>
        
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDsDonhang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [DON_HANG] WHERE [MaDonHang] = @MaDonHang" InsertCommand="INSERT INTO [DON_HANG] ([NgayTao], [DonGia], [HinhThucThanhToan], [MaXe], [TenTaiKhoan], [TrangThaiDonHang]) VALUES (@NgayTao, @DonGia, @HinhThucThanhToan, @MaXe, @TenTaiKhoan, @TrangThaiDonHang)" SelectCommand="SELECT * FROM [DON_HANG] INNER JOIN XE ON DON_HANG.MaXe = Xe.MaXe WHERE ([TrangThaiDonHang] = @TrangThaiDonHang)" UpdateCommand="UPDATE [DON_HANG] SET [TrangThaiDonHang] = @TrangThaiDonHang WHERE [MaDonHang] = @MaDonHang">
            <DeleteParameters>
                <asp:Parameter Name="MaDonHang" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NgayTao" Type="DateTime" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="HinhThucThanhToan" Type="String" />
                <asp:Parameter Name="MaXe" Type="Int32" />
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
                <asp:Parameter Name="TrangThaiDonHang" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlTrangthaidonhang" Name="TrangThaiDonHang" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="NgayTao" Type="DateTime" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="HinhThucThanhToan" Type="String" />
                <asp:Parameter Name="MaXe" Type="Int32" />
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
                <asp:Parameter Name="TrangThaiDonHang" Type="String" />
                <asp:Parameter Name="MaDonHang" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [TrangThaiDonHang] FROM [DON_HANG]"></asp:SqlDataSource>
        <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaDonHang,MaXe1" DataSourceID="SqlDsDonhang" AllowSorting="True" Height="40px" Width="100%" PageSize="5" OnLoad="GridView1_Load" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" OnRowUpdated="GridView1_RowUpdated" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:TemplateField HeaderText="Mã đơn hàng" InsertVisible="False" SortExpression="MaDonHang">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDonHang") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MaDonHang") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày tạo" SortExpression="NgayTao">
                    <EditItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("NgayTao", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("NgayTao", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã xe" SortExpression="MaXe">
                    <EditItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("MaXe") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("MaXe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên xe" SortExpression="TenXe">
                    <EditItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("TenXe") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("TenXe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tổng tiền" SortExpression="DonGia">
                    <EditItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DonGia",  "{0:0,0 đ}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình thức thanh toán" SortExpression="HinhThucThanhToan">
                    <EditItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("HinhThucThanhToan") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("HinhThucThanhToan") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trạng thái đơn hàng" SortExpression="TrangThaiDonHang">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" SelectedValue='<%# Bind("TrangThaiDonHang") %>' Width="163px">
                            <asp:ListItem>Tạo đơn hàng</asp:ListItem>
                            <asp:ListItem>Đang xử lý</asp:ListItem>
                            <asp:ListItem>Bị hủy bỏ</asp:ListItem>
                            <asp:ListItem>Hoàn lại</asp:ListItem>
                            <asp:ListItem>Hoàn thành</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TrangThaiDonHang") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên tài khoản" SortExpression="TenTaiKhoan">
                    <EditItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("TenTaiKhoan") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("TenTaiKhoan") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thao tác" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa trạng thái" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="MaDonHang" DataNavigateUrlFormatString="DonHangDetail.aspx?MaDonHang={0}" HeaderText="Chi tiết" NavigateUrl="~/Admin/DonHangDetail.aspx" Text="Chi tiết..." />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" Height="60px" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" Height="50px" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        </div>
    <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    </p>
</asp:Content>

