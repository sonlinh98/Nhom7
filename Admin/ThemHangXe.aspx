<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ThemHangXe.aspx.cs" Inherits="Admin_ThemHangXe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   
    <h1>&nbsp;</h1>
    <h1>&nbsp;Thêm hãng xe mới</h1>
    <script>

        function readURL(input) {
            if (input.files && input.files[0]) {
                if (input.files[0].size <= 5242880) {// size nhỏ hơn 5MB
                    
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#ContentPlaceHolder1_FormView1_Image1')
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
    <br />
    <div class="text-left">
        <table align="center" style="width: 43%">
            <tr>
                <td>
    <asp:FormView ID="FormView1"  runat="server" DataKeyNames="MaHangXe" DefaultMode="Insert" DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting" OnItemInserted="FormView1_ItemInserted" Width="91%">
        <EditItemTemplate>
            MaHangXe:
            <asp:Label ID="MaHangXeLabel1" runat="server" Text='<%# Eval("MaHangXe") %>' />
            <br />
            TenHang:
            <asp:TextBox ID="TenHangTextBox" runat="server" Text='<%# Bind("TenHang") %>' />
            <br />
            Anh:
            <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="w-100">
                <tr>
                    <td style="text-align: left">Tên hãng</td>
                    <td>
                        <asp:TextBox ID="TenHangTextBox" runat="server" Text='<%# Bind("TenHang") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TenHangTextBox" ErrorMessage="Không bỏ trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">Logo</td>
                    <td>
                        <asp:FileUpload ID="fuThemHangXe" onchange="readURL(this);" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fuThemHangXe" ErrorMessage="Hãy chọn logo" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: left" class="m-l-40">
                        &nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="66px" Width="133px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" OnClick="InsertCancelButton_Click" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHangXe:
            <asp:Label ID="MaHangXeLabel" runat="server" Text='<%# Eval("MaHangXe") %>' />
            <br />
            TenHang:
            <asp:Label ID="TenHangLabel" runat="server" Text='<%# Bind("TenHang") %>' />
            <br />
            Anh:
            <asp:Label ID="AnhLabel" runat="server" Text='<%# Bind("Anh") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
                </td>
            </tr>
        </table>
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
    
    <asp:Label ID="lbLoi" runat="server" Text=" "></asp:Label>
    
    </asp:Content>

