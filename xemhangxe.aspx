<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="xemhangxe.aspx.cs" Inherits="xemhangxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tenhang {
            font-size: medium;
            margin-left: 220px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
        }
        .anh{
			transition: all 1s;
			-moz-transition: all 1s;
			-webkit-transition: all 1s;
		}
		.anh:hover{
			transform:scale(1.4);
		}
        
       

        .auto-style3 {
            font-size: large;
            text-decoration:none;
        }
        .auto-style3:hover {
            color: burlywood;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="sqlDsHangXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT * FROM [HANG_XE]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaHangXe" DataSourceID="sqlDsHangXe" RepeatColumns="7">
            <ItemTemplate>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="ac">
                            <a href="xemdanhsachxetheohang.aspx?MaHangXe=<%# Eval("MaHangXe") %>"><asp:Image ID="Image1" runat="server" CssClass="anh" Height="66px" ImageUrl='<%# Eval("Anh", "~/ImageHangXe/{0}") %>' Width="97px" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="ac">
                            
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" Text='<%# Bind("TenHang") %>' PostBackUrl='<%# Eval("MaHangXe", "xemdanhsachxetheohang.aspx?MaHangXe={0}") %>'></asp:LinkButton>
                            </a>
                            
                        </td>
                    </tr>
                </table>
                <br />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </p>
   
</asp:Content>

