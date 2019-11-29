<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="datmua.aspx.cs" Inherits="datmua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {
             if (result) {
                 window.location.href = "dangnhap.aspx";
                 return false;
            } else {
                 window.history.go(-1); return false;
            }
        });
       
       
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            width: 163px;
        }
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            width: 100%;
            font-size: 13px;
        }
        .auto-style7 {
            font-size: 10px;
        }
        .auto-style8 {
            margin-top: 10;
        }
        .auto-style9 {
            width: 108px;
        }
    .auto-style10 {
        width: 108px;
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        <asp:Label ID="Label3" runat="server" Font-Size="32px" ForeColor="Black" Text="Thông tin đặt hàng"></asp:Label>
</h1>
    <br />
    <br />
    <p>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Địa chỉ giao hàng"></asp:Label>
</p>
<p>&nbsp;</p>
    <table class="auto-style6">
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label12" runat="server" Font-Size="16px" ForeColor="Black" Text="Tên người nhận"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTenKH" runat="server" Width="307px" Height="20px" Font-Size="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenKH" ErrorMessage="Tên người nhận không được để trống" ForeColor="Red" Font-Size="16px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label11" runat="server" Font-Size="16px" ForeColor="Black" Text="Điện thoại"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDienThoai" runat="server" Width="309px" Height="20px" Font-Size="16px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Số điện thoại không hợp lệ." ForeColor="Red" ValidationExpression="0(1\d{9}|9\d{8})" Font-Size="16px"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Điện thoại không được để trống" ForeColor="Red" Font-Size="16px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label10" runat="server" Font-Size="16px" ForeColor="Black" Text="Địa chỉ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" Height="20px" Width="344px" Font-Size="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Địa chỉ nhận hàng không được để trống" ForeColor="Red" Font-Size="16px"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <p>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Thông tin thanh toán"></asp:Label>
</p>
    <br />
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="chkTrucTiep" runat="server" Text="Thanh toán khi nhận hàng" OnCheckedChanged="chkTrucTiep_CheckedChanged" AutoPostBack="True" Font-Size="16px" />
            </td>
        </tr>
        <tr>
            <td colspan="2"><strong>
                <br />
                <asp:Label ID="Label7" runat="server" Font-Size="18px" ForeColor="Black" Text="Thông tin thẻ thanh toán"></asp:Label>
                <br />
                <span class="auto-style7">&nbsp;</span></strong></td>
        </tr>
        <tr>
            <td class="ar">
                <asp:Label ID="Label8" runat="server" Font-Size="16px" ForeColor="Black" Text="Ngân hàng "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlNganHang" runat="server" Height="24px" Width="229px" Font-Size="16px">
                    <asp:ListItem>BIDV</asp:ListItem>
                    <asp:ListItem>ViettinBank</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="ar">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="ar">
                <asp:Label ID="Label9" runat="server" Font-Size="16px" ForeColor="Black" Text="Mã thẻ "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMaThe" runat="server" Height="20px" Width="344px" Font-Size="16px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMaThe" ErrorMessage="Mã thẻ không hợp lệ!" ForeColor="Red" ValidationExpression="\d{16,19}" Font-Size="16px"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="ar">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMaThe" ErrorMessage="Mã thẻ không được để trống" ForeColor="Red" Enabled="False" Font-Size="16px"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
<p>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Thông tin xe đặt mua"></asp:Label>
</p>
<p>&nbsp;</p>

    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [XE] WHERE ([MaXe] = @MaXe)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaXe" QueryStringField="MaXe" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDsUpdateXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [XE] WHERE [MaXe] = @MaXe" InsertCommand="INSERT INTO [XE] ([TenXe], [TinhTrang], [GiaBan], [Model], [HopSo], [NhienLieu], [KieuDanDong], [MauSac], [KmDaDi], [DongXe], [NamSanXuat], [XuatXu], [MoTa], [Anh], [MaHangXe], [CoSan]) VALUES (@TenXe, @TinhTrang, @GiaBan, @Model, @HopSo, @NhienLieu, @KieuDanDong, @MauSac, @KmDaDi, @DongXe, @NamSanXuat, @XuatXu, @MoTa, @Anh, @MaHangXe, @CoSan)" SelectCommand="SELECT * FROM [XE]" UpdateCommand="UPDATE [XE] SET [TenXe] = @TenXe, [TinhTrang] = @TinhTrang, [GiaBan] = @GiaBan, [Model] = @Model, [HopSo] = @HopSo, [NhienLieu] = @NhienLieu, [KieuDanDong] = @KieuDanDong, [MauSac] = @MauSac, [KmDaDi] = @KmDaDi, [DongXe] = @DongXe, [NamSanXuat] = @NamSanXuat, [XuatXu] = @XuatXu, [MoTa] = @MoTa, [Anh] = @Anh, [MaHangXe] = @MaHangXe, [CoSan] = @CoSan WHERE [MaXe] = @MaXe">
            <DeleteParameters>
                <asp:Parameter Name="MaXe" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenXe" Type="String" />
                <asp:Parameter Name="TinhTrang" Type="String" />
                <asp:Parameter Name="GiaBan" Type="Decimal" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="HopSo" Type="String" />
                <asp:Parameter Name="NhienLieu" Type="String" />
                <asp:Parameter Name="KieuDanDong" Type="String" />
                <asp:Parameter Name="MauSac" Type="String" />
                <asp:Parameter Name="KmDaDi" Type="Int32" />
                <asp:Parameter Name="DongXe" Type="String" />
                <asp:Parameter Name="NamSanXuat" Type="Int32" />
                <asp:Parameter Name="XuatXu" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="MaHangXe" Type="Int32" />
                <asp:Parameter Name="CoSan" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenXe" Type="String" />
                <asp:Parameter Name="TinhTrang" Type="String" />
                <asp:Parameter Name="GiaBan" Type="Decimal" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="HopSo" Type="String" />
                <asp:Parameter Name="NhienLieu" Type="String" />
                <asp:Parameter Name="KieuDanDong" Type="String" />
                <asp:Parameter Name="MauSac" Type="String" />
                <asp:Parameter Name="KmDaDi" Type="Int32" />
                <asp:Parameter Name="DongXe" Type="String" />
                <asp:Parameter Name="NamSanXuat" Type="Int32" />
                <asp:Parameter Name="XuatXu" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="MaHangXe" Type="Int32" />
                <asp:Parameter Name="CoSan" Type="Int32" />
                <asp:Parameter Name="MaXe" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDsDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [DON_HANG] WHERE [MaDonHang] = @MaDonHang" InsertCommand="INSERT INTO [DON_HANG] ([NgayTao], [DonGia], [HinhThucThanhToan], [MaXe], [TenTaiKhoan], [TrangThaiDonHang], [TenNguoiNhan], [DiaChiNhan], [SDTNguoiNhan], [TenNganHang], [MaTheNganHang]) VALUES (@NgayTao, @DonGia, @HinhThucThanhToan, @MaXe, @TenTaiKhoan, @TrangThaiDonHang, @TenNguoiNhan, @DiaChiNhan, @SDTNguoiNhan, @TenNganHang, @MaTheNganHang)" SelectCommand="SELECT * FROM [DON_HANG]" UpdateCommand="UPDATE [DON_HANG] SET [NgayTao] = @NgayTao, [DonGia] = @DonGia, [HinhThucThanhToan] = @HinhThucThanhToan, [MaXe] = @MaXe, [TenTaiKhoan] = @TenTaiKhoan, [TrangThaiDonHang] = @TrangThaiDonHang, [TenNguoiNhan] = @TenNguoiNhan, [DiaChiNhan] = @DiaChiNhan, [SDTNguoiNhan] = @SDTNguoiNhan, [TenNganHang] = @TenNganHang, [MaTheNganHang] = @MaTheNganHang WHERE [MaDonHang] = @MaDonHang">
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
                <asp:Parameter Name="TenNguoiNhan" Type="String" />
                <asp:Parameter Name="DiaChiNhan" Type="String" />
                <asp:Parameter Name="SDTNguoiNhan" Type="String" />
                <asp:Parameter Name="TenNganHang" Type="String" />
                <asp:Parameter Name="MaTheNganHang" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NgayTao" Type="DateTime" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="HinhThucThanhToan" Type="String" />
                <asp:Parameter Name="MaXe" Type="Int32" />
                <asp:Parameter Name="TenTaiKhoan" Type="String" />
                <asp:Parameter Name="TrangThaiDonHang" Type="String" />
                <asp:Parameter Name="TenNguoiNhan" Type="String" />
                <asp:Parameter Name="DiaChiNhan" Type="String" />
                <asp:Parameter Name="SDTNguoiNhan" Type="String" />
                <asp:Parameter Name="TenNganHang" Type="String" />
                <asp:Parameter Name="MaTheNganHang" Type="String" />
                <asp:Parameter Name="MaDonHang" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDsGiaBan" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT [GiaBan] FROM [XE] WHERE ([MaXe] = @MaXe)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaXe" QueryStringField="MaXe" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaXe" DataSourceID="SqlDataSource1" Width="100%" Font-Size="16px" ForeColor="Black">
            <EditItemTemplate>
                MaXe:
                <asp:Label ID="MaXeLabel1" runat="server" Text='<%# Eval("MaXe") %>' />
                <br />
                TenXe:
                <asp:TextBox ID="TenXeTextBox" runat="server" Text='<%# Bind("TenXe") %>' />
                <br />
                TinhTrang:
                <asp:TextBox ID="TinhTrangTextBox" runat="server" Text='<%# Bind("TinhTrang") %>' />
                <br />
                GiaBan:
                <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                <br />
                Model:
                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                <br />
                HopSo:
                <asp:TextBox ID="HopSoTextBox" runat="server" Text='<%# Bind("HopSo") %>' />
                <br />
                NhienLieu:
                <asp:TextBox ID="NhienLieuTextBox" runat="server" Text='<%# Bind("NhienLieu") %>' />
                <br />
                KieuDanDong:
                <asp:TextBox ID="KieuDanDongTextBox" runat="server" Text='<%# Bind("KieuDanDong") %>' />
                <br />
                MauSac:
                <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
                <br />
                KmDaDi:
                <asp:TextBox ID="KmDaDiTextBox" runat="server" Text='<%# Bind("KmDaDi") %>' />
                <br />
                DongXe:
                <asp:TextBox ID="DongXeTextBox" runat="server" Text='<%# Bind("DongXe") %>' />
                <br />
                NamSanXuat:
                <asp:TextBox ID="NamSanXuatTextBox" runat="server" Text='<%# Bind("NamSanXuat") %>' />
                <br />
                XuatXu:
                <asp:TextBox ID="XuatXuTextBox" runat="server" Text='<%# Bind("XuatXu") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                Anh:
                <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                MaHangXe:
                <asp:TextBox ID="MaHangXeTextBox" runat="server" Text='<%# Bind("MaHangXe") %>' />
                <br />
                CoSan:
                <asp:TextBox ID="CoSanTextBox" runat="server" Text='<%# Bind("CoSan") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                TenXe:
                <asp:TextBox ID="TenXeTextBox" runat="server" Text='<%# Bind("TenXe") %>' />
                <br />
                TinhTrang:
                <asp:TextBox ID="TinhTrangTextBox" runat="server" Text='<%# Bind("TinhTrang") %>' />
                <br />
                GiaBan:
                <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                <br />
                Model:
                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                <br />
                HopSo:
                <asp:TextBox ID="HopSoTextBox" runat="server" Text='<%# Bind("HopSo") %>' />
                <br />
                NhienLieu:
                <asp:TextBox ID="NhienLieuTextBox" runat="server" Text='<%# Bind("NhienLieu") %>' />
                <br />
                KieuDanDong:
                <asp:TextBox ID="KieuDanDongTextBox" runat="server" Text='<%# Bind("KieuDanDong") %>' />
                <br />
                MauSac:
                <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
                <br />
                KmDaDi:
                <asp:TextBox ID="KmDaDiTextBox" runat="server" Text='<%# Bind("KmDaDi") %>' />
                <br />
                DongXe:
                <asp:TextBox ID="DongXeTextBox" runat="server" Text='<%# Bind("DongXe") %>' />
                <br />
                NamSanXuat:
                <asp:TextBox ID="NamSanXuatTextBox" runat="server" Text='<%# Bind("NamSanXuat") %>' />
                <br />
                XuatXu:
                <asp:TextBox ID="XuatXuTextBox" runat="server" Text='<%# Bind("XuatXu") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                Anh:
                <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                MaHangXe:
                <asp:TextBox ID="MaHangXeTextBox" runat="server" Text='<%# Bind("MaHangXe") %>' />
                <br />
                CoSan:
                <asp:TextBox ID="CoSanTextBox" runat="server" Text='<%# Bind("CoSan") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" rowspan="11">
                            <asp:Image ID="Image1" runat="server" Height="101px" ImageUrl='<%# Eval("Anh", "~/Admin/Images/{0}") %>' Width="139px" />
                        </td>
                        <td class="auto-style5"><strong>Tên xe</strong></td>
                        <td>
                            <asp:Label ID="TenXeLabel" runat="server" Text='<%# Bind("TenXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Giá bán</strong></td>
                        <td>
                            <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Bind("GiaBan", "{0:0,0 vnđ}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Tình trạng</strong></td>
                        <td>
                            <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Model</strong></td>
                        <td>
                            <asp:Label ID="ModelLabel" runat="server" Text='<%# Bind("Model") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Nhiên liệu</strong></td>
                        <td>
                            <asp:Label ID="NhienLieuLabel" runat="server" Text='<%# Bind("NhienLieu") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Màu sắc</strong></td>
                        <td>
                            <asp:Label ID="MauSacLabel" runat="server" Text='<%# Bind("MauSac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Km đã đi</strong></td>
                        <td>
                            <asp:Label ID="KmDaDiLabel" runat="server" Text='<%# Bind("KmDaDi") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Dòng xe</strong></td>
                        <td>
                            <asp:Label ID="DongXeLabel" runat="server" Text='<%# Bind("DongXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Năm sản xuất</strong></td>
                        <td>
                            <asp:Label ID="NamSanXuatLabel" runat="server" Text='<%# Bind("NamSanXuat") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Xuất xứ</strong></td>
                        <td>
                            <asp:Label ID="XuatXuLabel" runat="server" Text='<%# Bind("XuatXu") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><strong>Mô tả</strong></td>
                        <td>
                            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:Button ID="btnDatXe" runat="server" Height="25px" Text="Đặt xe" Width="116px" OnClick="btnDatXe_Click" />
        <asp:Label ID="lblThongBao" runat="server" Text="      " ForeColor="#FF3300"></asp:Label>
        <asp:Label ID="lblThongBao1" runat="server" ForeColor="#0099FF" Text="      "></asp:Label>
        <asp:Button ID="btnBack" runat="server" CausesValidation="False" CssClass="auto-style8" Height="25px" Text="Quay lại" Width="99px" OnClick="btnBack_Click" />
    </p>
    <br />
    <br />
</asp:Content>

