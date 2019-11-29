<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Xe.aspx.cs" Inherits="Xe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                if (input.files[0].size <= 5242880) {// size nhỏ hơn 5MB
                    
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#ContentPlaceHolder1_GridView1_showImages_0')
                            .attr('src', e.target.result)
                            .width(200)
                            .height(150);
                    };

                    var nameFile = document.getElementById("ContentPlaceHolder1_GridView1_FileUpload1_0").files[0].name;

                    var inputDB = document.getElementById("ContentPlaceHolder1_GridView1_TextBox1_0");

                    inputDB.value = nameFile;

                    reader.readAsDataURL(input.files[0]);
                    document.getElementById("ContentPlaceHolder1_FileUpload2").files = document.getElementById("ContentPlaceHolder1_GridView1_FileUpload1_0").files;
                } else {
                    alert("File ảnh phải có kích thước <= 5MB. Vui lòng chọn ảnh khác!");
                }
            }
        }
    </script>
    <h1>Danh sách Xe trong cửa hàng</h1>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [XE] WHERE [MaXe] = @MaXe" InsertCommand="INSERT INTO [XE] ([TenXe], [TinhTrang], [GiaBan], [Model], [HopSo], [NhienLieu], [KieuDanDong], [MauSac], [KmDaDi], [DongXe], [NamSanXuat], [XuatXu], [MoTa], [Anh], [MaHangXe], [CoSan]) VALUES (@TenXe, @TinhTrang, @GiaBan, @Model, @HopSo, @NhienLieu, @KieuDanDong, @MauSac, @KmDaDi, @DongXe, @NamSanXuat, @XuatXu, @MoTa, @Anh, @MaHangXe, @CoSan)" SelectCommand="SELECT * FROM [XE]" UpdateCommand="UPDATE [XE] SET [TenXe] = @TenXe, [TinhTrang] = @TinhTrang, [GiaBan] = @GiaBan, [Model] = @Model, [HopSo] = @HopSo, [NhienLieu] = @NhienLieu, [KieuDanDong] = @KieuDanDong, [MauSac] = @MauSac, [KmDaDi] = @KmDaDi, [DongXe] = @DongXe, [NamSanXuat] = @NamSanXuat, [XuatXu] = @XuatXu, [MoTa] = @MoTa, [Anh] = @Anh, [MaHangXe] = @MaHangXe, [CoSan] = @CoSan WHERE [MaXe] = @MaXe">
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
                <asp:Parameter Name="CoSan" Type="Boolean" />
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
                <asp:Parameter Name="CoSan" Type="Boolean" />
                <asp:Parameter Name="MaXe" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="text-left" style="margin-left: 40px">
        <asp:LinkButton ID="linkThemXe" runat="server" PostBackUrl="~/Admin/ThemXeMoi.aspx" style="font-size: large">Thêm xe mới</asp:LinkButton>
        </div>
    </p>
    <div style="width: 100%; overflow-x:scroll">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaXe" DataSourceID="SqlDataSource1" CellPadding="4" PageSize="5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted">
            <Columns>
                <asp:BoundField DataField="MaXe" HeaderText="Mã xe" InsertVisible="False" ReadOnly="True" SortExpression="MaXe" />
                <asp:TemplateField HeaderText="Tên xe" SortExpression="TenXe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TenXe") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenXe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh" SortExpression="Anh">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="readURL(this);"/>
                        <br />
                        <br />
                        <asp:Image ID="showImages" runat="server" Height="80px" Width="150px" />
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Tên ảnh:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Anh") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl='<%# Eval("Anh", "~/Admin/images/{0}") %>' Width="140px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tình trạng" SortExpression="TinhTrang">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TinhTrang") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("TinhTrang") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá bán" SortExpression="GiaBan">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GiaBan") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("GiaBan") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Model" SortExpression="Model">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hộp số" SortExpression="HopSo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("HopSo") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("HopSo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nhiên liệu" SortExpression="NhienLieu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("NhienLieu") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("NhienLieu") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kiểu dẫn động" SortExpression="KieuDanDong">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("KieuDanDong") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("KieuDanDong") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Màu sắc" SortExpression="MauSac">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("MauSac") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("MauSac") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Km đã đi" SortExpression="KmDaDi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("KmDaDi") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("KmDaDi") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dòng xe" SortExpression="DongXe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("DongXe") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("DongXe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Năm sản xuất" SortExpression="NamSanXuat">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("NamSanXuat") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox13" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("NamSanXuat") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Xuất xứ" SortExpression="XuatXu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("XuatXu") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox14" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("XuatXu") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã hãng xe" SortExpression="MaHangXe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("MaHangXe") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox15" ErrorMessage="Cần nhập"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("MaHangXe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CheckBoxField DataField="CoSan" HeaderText="Có sẵn" SortExpression="CoSan" />
                <asp:TemplateField HeaderText="Mô tả" SortExpression="MoTa">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="175px" Text='<%# Bind("MoTa") %>' TextMode="MultiLine" Width="220px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" InsertText="Thêm mới" UpdateText="Cập nhật" />
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
        </div>
    <p>
        <asp:Label ID="lbthongbao" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload2" runat="server" Visible="False"  />
        </p>
    <p>
        &nbsp;</p>
</asp:Content>

