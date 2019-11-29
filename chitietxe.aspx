<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietxe.aspx.cs" Inherits="chitietxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 18px;
        }
        .auto-style3 {
            font-size: 22px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: medium;
        }
        /*** IMAGE BUTTON ***/
        .imagebutton
        {
	        color: #fff;
	        background-color:#9d0202;
            font-family: inherit;
	        height: 50px;
	        width: 720px;
	        padding: 10px;
	        border: solid 0px #d4d4d4;
	        border-bottom: solid 2px #d4d4d4;
	        font-size: 17px;
	        font-weight: lighter;
	        webkit-border-radius: 0px 0px 0px 0px;
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .imagebutton:hover
        {
	       
	        border-bottom: solid 0px #fff;
            background-color: #bf5c59;
            
        }

         figure.zoom {
          background-position: 50% 50%;
          position: relative;
          width: 720px;
          overflow: hidden;
          cursor: zoom-in;
        }

        figure.zoom img:hover {
          opacity: 0;
        }

        figure.zoom img {
          transition: opacity 0.5s;
          display: block;
          width: 100%;
        }
    </style>

    <script>
      function zoom(e) {
        var zoomer = e.currentTarget;
        e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
        e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
        x = (offsetX / zoomer.offsetWidth) * 100
        y = (offsetY / zoomer.offsetHeight) * 100
        zoomer.style.backgroundPosition = x + "% " + y + "%";
      }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaXe" DataSourceID="sqlDsChitietXe">
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                <br />
                <table class="auto-style1">
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="TenXeLabel" runat="server" Text='<%# Bind("TenXe") %>' CssClass="auto-style3" ForeColor="Black" Font-Bold="True" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Icon/trangthai.png" />
                            <asp:Label ID="Label2" runat="server" Text="Tình trạng: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td>
                            <img src="Icon/kmdadi.png" />
                            <asp:Label ID="Label3" runat="server" Text="Km đã đi: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="KmDaDiLabel" runat="server" Text='<%# Bind("KmDaDi") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td>
                            <img src="Icon/hopso.png" />
                            <asp:Label ID="Label4" runat="server" Text="Hộp số: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="HopSoLabel" runat="server" Text='<%# Bind("HopSo") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img src="Icon/nhienlieu.png" />
                            <asp:Label ID="Label5" runat="server" Text="Nhiên liệu: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="NhienLieuLabel" runat="server" Text='<%# Bind("NhienLieu") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2">
                            <img src="Icon/dongxe.png" />
                            <asp:Label ID="Label7" runat="server" Text="Dòng Xe: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="DongXeLabel" runat="server" Text='<%# Bind("DongXe") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2">
                            <img src="Icon/dongxe.png" />
                            <asp:Label ID="Label8" runat="server" Text="Năm SX:" ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="NamSanXuatLabel" runat="server" Text='<%# Bind("NamSanXuat") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img src="Icon/dandong.png" />
                            <asp:Label ID="Label6" runat="server" Text="Dẫn động: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="KieuDanDongLabel" runat="server" Text='<%# Bind("KieuDanDong") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2">
                            <img src="Icon/model.png" />
                            <asp:Label ID="Label9" runat="server" Text="Màu xe: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="MauSacLabel" runat="server" Text='<%# Bind("MauSac") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2">
                            <img src="Icon/xuatxu.png" />
                            <asp:Label ID="Label10" runat="server" Text="Xuất xứ: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="XuatXuLabel" runat="server" Text='<%# Bind("XuatXu") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <img src="Icon/model.png" />
                            <asp:Label ID="Label11" runat="server" Text="Model: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="ModelLabel" runat="server" Text='<%# Bind("Model") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2">
                            <img src="Icon/gia.png" />
                            <asp:Label ID="Label12" runat="server" Text="Giá bán: " ForeColor="Black" CssClass="auto-style5"></asp:Label>
                            <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Bind("GiaBan","{0:0,0₫}") %>' ForeColor="Black" CssClass="auto-style5" />
                        </td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <figure class="zoom" style="background:url('<%# Eval("Anh", "ImagesXe/{0}") %>')" onmousemove="zoom(event)" ontouchmove="zoom(event)">
                    <asp:Image ID="Image1" runat="server" CssClass="img" Height="500px" ImageUrl='<%# Eval("Anh", "~/ImagesXe/{0}") %>' Width="700px" />
                </figure>
                <br />
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Mô tả: " CssClass="auto-style4" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                <br />
                <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' CssClass="auto-style5" ForeColor="Black" />
                <br />
                <br />
                        <asp:Button ID="btnDatXe" runat="server"  CssClass="imagebutton"
                                PostBackUrl='<%# Eval("MaXe", "datmua.aspx?MaXe={0}") %>' Text="Đặt mua" />
                <br />
            </ItemTemplate>
        </asp:FormView>
        &nbsp;<asp:SqlDataSource ID="sqlDsChitietXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [XE] WHERE ([MaXe] = @MaXe)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaXe" QueryStringField="MaXe" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

