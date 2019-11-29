<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="DonHangDetail.aspx.cs" Inherits="Admin_DonHangDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p></p>
    <h2 class="hei-40" style="margin-bottom: 0px; height: 37px;">Chi tiết đơn hàng</h2>
    <p class="text-right">
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDonHang,MaXe1,TenTaiKhoan1" DataSourceID="SqlDsChiTietDonHang" GridLines="Both" Width="100%">
            <EditItemTemplate>
                MaDonHang:
                <asp:Label ID="MaDonHangLabel1" runat="server" Text='<%# Eval("MaDonHang") %>' />
                <br />
                NgayTao:
                <asp:TextBox ID="NgayTaoTextBox" runat="server" Text='<%# Bind("NgayTao") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                HinhThucThanhToan:
                <asp:TextBox ID="HinhThucThanhToanTextBox" runat="server" Text='<%# Bind("HinhThucThanhToan") %>' />
                <br />
                MaXe:
                <asp:TextBox ID="MaXeTextBox" runat="server" Text='<%# Bind("MaXe") %>' />
                <br />
                TenTaiKhoan:
                <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" Text='<%# Bind("TenTaiKhoan") %>' />
                <br />
                TrangThaiDonHang:
                <asp:TextBox ID="TrangThaiDonHangTextBox" runat="server" Text='<%# Bind("TrangThaiDonHang") %>' />
                <br />
                MaXe1:
                <asp:Label ID="MaXe1Label1" runat="server" Text='<%# Eval("MaXe1") %>' />
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
                TenTaiKhoan1:
                <asp:Label ID="TenTaiKhoan1Label1" runat="server" Text='<%# Eval("TenTaiKhoan1") %>' />
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <InsertItemTemplate>
                NgayTao:
                <asp:TextBox ID="NgayTaoTextBox" runat="server" Text='<%# Bind("NgayTao") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                HinhThucThanhToan:
                <asp:TextBox ID="HinhThucThanhToanTextBox" runat="server" Text='<%# Bind("HinhThucThanhToan") %>' />
                <br />
                MaXe:
                <asp:TextBox ID="MaXeTextBox" runat="server" Text='<%# Bind("MaXe") %>' />
                <br />
                TenTaiKhoan:
                <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" Text='<%# Bind("TenTaiKhoan") %>' />
                <br />
                TrangThaiDonHang:
                <asp:TextBox ID="TrangThaiDonHangTextBox" runat="server" Text='<%# Bind("TrangThaiDonHang") %>' />
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
                TenTaiKhoan1:
                <asp:TextBox ID="TenTaiKhoan1TextBox" runat="server" Text='<%# Bind("TenTaiKhoan1") %>' />
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
                <div class="text-left">
                    <table class="w-100" style="margin-top: 0px">
                        <tr>
                            <td style="width: 550px">
                                <div class="text-left">
                                   <br />  <strong>
                                    Thông tin đơn hàng</strong><br />
                                    </div>
                            </td>
                            <td>
                                <div class="text-left">
                                    <strong>
                                    <br />
                                    Thông tin khách hàng</strong>
                                    <br />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 550px"><strong>
                                <table border="1" class="w-90" style="width: 90%; ">
                                    <tr>
                                        <td class="text-left" style="width: 222px; height: 24px;"><strong>Mã đơn hàng:</strong></td>
                                        <td class="text-left" style="height: 24px">
                                            <asp:Label ID="MaDonHangLabel" runat="server" Text='<%# Eval("MaDonHang") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Ngày tạo:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="NgayTaoLabel" runat="server" Text='<%# Bind("NgayTao", "{0:dd/MM/yyyy}") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Tổng tiền:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia", "{0:0,0 đ}") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Hình thức thanh toán:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="HinhThucThanhToanLabel" runat="server" Text='<%# Bind("HinhThucThanhToan") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Trạng thái đơn hàng:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TrangThaiDonHang") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Tên ngân hàng:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenNganHang") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 222px"><strong>Mã thẻ ngân hàng:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MaTheNganHang") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                </strong></td>
                            <td>
                                <table border="1" class="w-90">
                                    <tr>
                                        <td class="text-left" style="width: 259px; height: 24px;"><strong>Tên tài khoản:</strong></td>
                                        <td class="text-left" style="height: 24px">
                                            <asp:Label ID="TenTaiKhoan1Label" runat="server" Text='<%# Eval("TenTaiKhoan1") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 259px"><strong>Tên người nhận:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("TenNguoiNhan") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 259px"><strong>Địa chỉ nhận:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChiNhan") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 259px"><strong>Số diện thoại người nhận:</strong></td>
                                        <td class="text-left">
                                            <asp:Label ID="SoDienThoaiLabel" runat="server" Text='<%# Bind("SDTNguoiNhan") %>' />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="text-left">
                    <br />
                    <strong>Thông tin xe</strong><br />
                    <br />
                </div>
                <table border="0" class="w-100">
                    <tr>
                        <td rowspan="9" style="width: 287px">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Anh", "~/Admin/images/{0}") %>' Width="250px" />
                        </td>
                        <td class="text-left" style="width: 257px"><strong>Mã xe:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="MaXe1Label" runat="server" Text='<%# Eval("MaXe1") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Tên xe:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="TenXeLabel" runat="server" Text='<%# Bind("TenXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Model:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="ModelLabel" runat="server" Text='<%# Bind("Model") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Tình trạng:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Hộp số:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="HopSoLabel" runat="server" Text='<%# Bind("HopSo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Màu sắc:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="MauSacLabel" runat="server" Text='<%# Bind("MauSac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Dòng xe:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="DongXeLabel" runat="server" Text='<%# Bind("DongXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Năm sản xuất:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="NamSanXuatLabel" runat="server" Text='<%# Bind("NamSanXuat") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" style="width: 257px"><strong>Mô tả:</strong></td>
                        <td class="text-left">
                            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                        </td>
                    </tr>
                </table>
                <div class="text-left">
                    <br />
                </div>
            </ItemTemplate>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />

        </asp:FormView>
        <asp:SqlDataSource ID="SqlDsChiTietDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [DON_HANG] INNER JOIN XE ON DON_HANG.MaXe = Xe.MaXe  INNER JOIN TAI_KHOAN ON TAI_KHOAN.TenTaiKhoan = DON_HANG.TenTaiKhoan WHERE ([MaDonHang] = @MaDonHang)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDonHang" QueryStringField="MaDonHang" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="text-right"><asp:Button ID="btnBack" runat="server" Height="31px" PostBackUrl="~/Admin/DonHang.aspx" Text="Quay lại" Width="91px" /></p>
</asp:Content>

