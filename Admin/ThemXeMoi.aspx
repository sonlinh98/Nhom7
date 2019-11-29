<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ThemXeMoi.aspx.cs" Inherits="Admin_ThemXeMoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script>
         document.addEventListener("DOMContentLoaded", function (event) {
             var addButton = document.getElementById("ContentPlaceHolder1_FormView1_NewButton");
             if (addButton!=null) {
                 addButton.click();
             }
         });


        function readURL(input) {
            if (input.files && input.files[0]) {
                if (input.files[0].size <= 5242880) {// size nhỏ hơn 5MB
                    
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#ContentPlaceHolder1_FormView1_reviewAnhXeThem')
                            .attr('src', e.target.result)
                            .width(200)
                            .height(150);
                    };

                    var nameFile = document.getElementById("ContentPlaceHolder1_FormView1_FileUploadThemXe").files[0].name;

                    var inputDB = document.getElementById("ContentPlaceHolder1_FormView1_txtTenAnhXeThem");

                    inputDB.value = nameFile;

                    reader.readAsDataURL(input.files[0]);
                    document.getElementById("ContentPlaceHolder1_FileUpload1").files = document.getElementById("ContentPlaceHolder1_FormView1_FileUploadThemXe").files;
                } else {
                    alert("File ảnh phải có kích thước <= 5MB. Vui lòng chọn ảnh khác!");
                }
            }
        }
    </script>

    <h1>&nbsp;</h1>
    <h1>Thêm xe mới</h1>
    <p>
        <asp:SqlDataSource ID="sqlDsxe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString2 %>" DeleteCommand="DELETE FROM [XE] WHERE [MaXe] = @MaXe" InsertCommand="INSERT INTO [XE] ([TenXe], [TinhTrang], [GiaBan], [Model], [HopSo], [NhienLieu], [KieuDanDong], [MauSac], [KmDaDi], [DongXe], [NamSanXuat], [XuatXu], [MoTa], [Anh], [MaHangXe], [CoSan]) VALUES (@TenXe, @TinhTrang, @GiaBan, @Model, @HopSo, @NhienLieu, @KieuDanDong, @MauSac, @KmDaDi, @DongXe, @NamSanXuat, @XuatXu, @MoTa, @Anh, @MaHangXe, @CoSan)" SelectCommand="SELECT * FROM [XE]" UpdateCommand="UPDATE [XE] SET [TenXe] = @TenXe, [TinhTrang] = @TinhTrang, [GiaBan] = @GiaBan, [Model] = @Model, [HopSo] = @HopSo, [NhienLieu] = @NhienLieu, [KieuDanDong] = @KieuDanDong, [MauSac] = @MauSac, [KmDaDi] = @KmDaDi, [DongXe] = @DongXe, [NamSanXuat] = @NamSanXuat, [XuatXu] = @XuatXu, [MoTa] = @MoTa, [Anh] = @Anh, [MaHangXe] = @MaHangXe, [CoSan] = @CoSan WHERE [MaXe] = @MaXe">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaXe" DataSourceID="sqlDsxe" Width="614px" OnItemUpdated="FormView1_ItemUpdated">
            <InsertItemTemplate>
                <br />
                <table class="w-100">
                    <tr>
                        <td>Tên xe</td>
                        <td>
                            <asp:TextBox ID="TenXeTextBox" runat="server" Text='<%# Bind("TenXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Tình trạng</td>
                        <td>
                            <asp:TextBox ID="TinhTrangTextBox" runat="server" Text='<%# Bind("TinhTrang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Giá bạn</td>
                        <td>
                            <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td>
                            <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Hộp số</td>
                        <td>
                            <asp:TextBox ID="HopSoTextBox" runat="server" Text='<%# Bind("HopSo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Nhiên liệu</td>
                        <td>
                            <asp:TextBox ID="NhienLieuTextBox" runat="server" Text='<%# Bind("NhienLieu") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Kiểu dẫn động</td>
                        <td>
                            <asp:TextBox ID="KieuDanDongTextBox" runat="server" Text='<%# Bind("KieuDanDong") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Màu sắc</td>
                        <td>
                            <asp:TextBox ID="MauSacTextBox" runat="server" Text='<%# Bind("MauSac") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Km đã đi</td>
                        <td>
                            <asp:TextBox ID="KmDaDiTextBox" runat="server" Text='<%# Bind("KmDaDi") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Dòng xe</td>
                        <td>
                            <asp:TextBox ID="DongXeTextBox" runat="server" Text='<%# Bind("DongXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Năm sản xuất</td>
                        <td>
                            <asp:TextBox ID="NamSanXuatTextBox" runat="server" Text='<%# Bind("NamSanXuat") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Xuất xứ</td>
                        <td>
                            <asp:TextBox ID="XuatXuTextBox" runat="server" Text='<%# Bind("XuatXu") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Mô tả</td>
                        <td>
                            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' TextMode="MultiLine" Height="120px" Width="249px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Ảnh</td>
                        <td>
                            <br />
                            <asp:FileUpload ID="FileUploadThemXe" runat="server" onchange="readURL(this);" />
                            <br />
                            <br />
                            <asp:Image ID="reviewAnhXeThem" runat="server" Height="85px" Width="129px" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Tên ảnh:  "></asp:Label>
                            <asp:TextBox ID="txtTenAnhXeThem" runat="server" Text='<%# Bind("Anh") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã hãng xe</td>
                        <td>
                            <asp:TextBox ID="MaHangXeTextBox" runat="server" Text='<%# Bind("MaHangXe") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Có sẵn</td>
                        <td>
                            <asp:TextBox ID="CoSanTextBox" runat="server" Text='<%# Bind("CoSan") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Lưu lại" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm mới" />
            </ItemTemplate>
        </asp:FormView>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

