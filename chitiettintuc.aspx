<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitiettintuc.aspx.cs" Inherits="chitiettintuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: medium;
        }
        .tieudemota {
            font-family: 'OswaldVNF',Tahoma!important;
            font-weight: normal!important;
            padding-bottom: 10px;
            font-size: 17px!important;
            color: #1260ab!important;
            text-transform: none!important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaTin" DataSourceID="sqlDsChiTietTinTuc">
            <EditItemTemplate>
                MaTin:
                <asp:Label ID="MaTinLabel1" runat="server" Text='<%# Eval("MaTin") %>' />
                <br />
                Anh:
                <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                NoiDung:
                <asp:TextBox ID="NoiDungTextBox" runat="server" Text='<%# Bind("NoiDung") %>' />
                <br />
                NgayTao:
                <asp:TextBox ID="NgayTaoTextBox" runat="server" Text='<%# Bind("NgayTao") %>' />
                <br />
                LuotXem:
                <asp:TextBox ID="LuotXemTextBox" runat="server" Text='<%# Bind("LuotXem") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Anh:
                <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                NoiDung:
                <asp:TextBox ID="NoiDungTextBox" runat="server" Text='<%# Bind("NoiDung") %>' />
                <br />
                NgayTao:
                <asp:TextBox ID="NgayTaoTextBox" runat="server" Text='<%# Bind("NgayTao") %>' />
                <br />
                LuotXem:
                <asp:TextBox ID="LuotXemTextBox" runat="server" Text='<%# Bind("LuotXem") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="tieudemota">
                
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" ForeColor="Black" Text='<%# Eval("MoTa") %>'></asp:Label>
                <br />
                    </div>
                    <hr style:"color:darkslategrey" />
                <br />
                
                <asp:Label ID="Label4" runat="server" CssClass="auto-style4" ForeColor="Black" Text="Ngày đăng: "></asp:Label>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style4" ForeColor="Black" Text='<%# Eval("NgayTao","{0:dd/MM/yyyy}") %>'></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" CssClass="auto-style4" ForeColor="Black" Text="Lượt xem bài:"></asp:Label>
                &nbsp;<asp:Label ID="Label7" runat="server" CssClass="auto-style4" ForeColor="Black" Text='<%# Eval("LuotXem") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="NoiDungLabel" runat="server" CssClass="auto-style3" ForeColor="Black" Text='<%# Bind("NoiDung") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="sqlDsChiTietTinTuc" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [TinTuc] WHERE ([MaTin] = @MaTin)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaTin" QueryStringField="MaTin" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
  
   
</asp:Content>

