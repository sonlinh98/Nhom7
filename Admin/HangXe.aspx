<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="HangXe.aspx.cs" Inherits="HangXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <script>

        function readURL(input) {
            if (input.files && input.files[0]) {
                if (input.files[0].size <= 5242880) {// size nhỏ hơn 5MB
                    
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#ContentPlaceHolder1_GridView1_Image2_0')
                            .attr('src', e.target.result)
                            .width(200)
                            .height(150);
                    };

  

                    reader.readAsDataURL(input.files[0]);
                } else {
                    alert("File ảnh phải có kích thước <= 5MB. Vui lòng chọn ảnh khác!");
                }
            }
        }

    </script>

    <h1>Danh sách hãng xe</h1>
    <table style="width: 97%">
        <tr>
            <td style="width: 320px">&nbsp;</td>
            <td class="text-right" style="width: 755px">&nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 320px">
        <asp:LinkButton ID="linkThemHangXe" runat="server" PostBackUrl="~/Admin/ThemHangXe.aspx">Thêm hãng xe</asp:LinkButton>
            </td>
            <td class="text-right" style="width: 755px">
                <asp:TextBox ID="txtTenHang" runat="server" Height="27px" Width="294px"></asp:TextBox>
                <asp:Button ID="btnTimKiem" runat="server" Height="27px" OnClick="btnTimKiem_Click" Text="Tìm kiếm" />
            </td>
            <td class="text-left">
                <asp:Button ID="btnReset" runat="server" Height="27px" OnClick="btnReset_Click" Text="Làm mới" Width="92px" />
            </td>
        </tr>
        <tr>
            <td style="width: 320px">&nbsp;</td>
            <td class="text-right" style="width: 755px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <p class="text-left">
            <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaHangXe" DataSourceID="SqlDataSource1"  OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" Width="100%" OnRowCommand="GridView1_RowCommand" OnRowDeleted="GridView1_RowDeleted" >
                <Columns>
                    <asp:BoundField DataField="MaHangXe" HeaderText="Mã hãng xe" InsertVisible="False" ReadOnly="True" SortExpression="MaHangXe" />
                    <asp:BoundField DataField="TenHang" HeaderText="Tên hãng" SortExpression="TenHang" />
                    <asp:TemplateField HeaderText="Logo" SortExpression="Anh">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Anh") %>'></asp:TextBox>
                            <asp:FileUpload ID="fuSua" runat="server" onchange="readURL(this);" />
                            <br />
                            <asp:Image ID="Image2" runat="server" Height="99px" ImageUrl='<%# Eval("Anh", "~/Admin/images/{0}") %>' Width="137px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Anh", "~/Admin/images/{0}") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Tùy chọn" UpdateText="Cập nhật" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" DeleteCommand="DELETE FROM [HANG_XE] WHERE [MaHangXe] = @original_MaHangXe AND [TenHang] = @original_TenHang AND [Anh] = @original_Anh" InsertCommand="INSERT INTO [HANG_XE] ([TenHang], [Anh]) VALUES (@TenHang, @Anh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HANG_XE]" UpdateCommand="UPDATE [HANG_XE] SET [TenHang] = @TenHang, [Anh] = @Anh WHERE [MaHangXe] = @original_MaHangXe AND [TenHang] = @original_TenHang AND [Anh] = @original_Anh">
                <DeleteParameters>
                    <asp:Parameter Name="original_MaHangXe" Type="Int32" />
                    <asp:Parameter Name="original_TenHang" Type="String" />
                    <asp:Parameter Name="original_Anh" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenHang" Type="String" />
                    <asp:Parameter Name="Anh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenHang" Type="String" />
                    <asp:Parameter Name="Anh" Type="String" />
                    <asp:Parameter Name="original_MaHangXe" Type="Int32" />
                    <asp:Parameter Name="original_TenHang" Type="String" />
                    <asp:Parameter Name="original_Anh" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <p>
        <asp:Label ID="lblLoi" runat="server" ForeColor="Red" Text=" "></asp:Label>
    </p>
</asp:Content>

