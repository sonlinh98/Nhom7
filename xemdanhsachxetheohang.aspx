<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="xemdanhsachxetheohang.aspx.cs" Inherits="xemdanhsachxetheohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tenxe {
            margin-left: 30px;
        }
        .dongxe {
            margin-left: 10px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 18px;
        }
         .anh{
			transition: all 1s;
			-moz-transition: all 1s;
			-webkit-transition: all 1s;
		}
		.anh:hover{
			transform:scale(1.2);
		}
        
         .simplebutton1
        {
	        color: #fff;
	        background-color:black;
	        height: 50px;
	        width: 215px;
	        padding:10px;
	        border:none 0px transparent;
	        font-size: 17px;
	        font-weight: lighter;
	        webkit-border-radius: 2px 2px 2px 2px;
	        -moz-border-radius:  2px 2px 2px 2px;
	        border-radius:  2px 2px 2px 2px;
        }

        .simplebutton1:hover
        {
	        background-color:#3498db;
	        border:solid 1px #fff;
        }

        .simplebutton1:focus
        {
	        color: #383838;
	        background-color: #fff;
	        border:solid 3px rgba(98,176,255,0.3);
        }


        .simpleshape1
        {
	        color: #fff;
	        background-color:black;
	        height: 50px;
	        width: 215px;
	        padding:10px;
	        border:none 0px transparent;
	        font-size: 17px;
	        font-weight: lighter;
	        webkit-border-radius: 2px 16px 16px 16px;
	        -moz-border-radius:  2px 16px 16px 16px;
	        border-radius:  2px 16px 16px 16px;
        }

        .simpleshape1:hover
        {
	        background-color: #e74c3c;
	        border:solid 1px #fff;
        }

        .simpleshape1:focus
        {
	        color: #383838;
	        background-color: #fff;
	        border:solid 3px rgba(98,176,255,0.3);
        }

        /**** THIRD BUTTON ***/
        .bordereffect
        {
	        color: #1abc9c;
	        background-color: Transparent;
	        height: 50px;
	        width: 215px;
	        padding: 10px;
	        border: solid 2px #1abc9c;
	        font-size: 17px;
	        font-weight: lighter;
	        font-family: Consolas;
	        webkit-border-radius: 0px 0px 0px 0px;
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .bordereffect:hover
        {
	        color: #fff;
	        border: solid 5px #fff;
	        cursor:pointer;
        }

        .bordereffect:focus
        {

        }
        /*** BORDER BOTTOM ***/
        .borderbottom
        {
	        color: #d35400;
	        background-color: Transparent;
	        height: 50px;
	        width: 215px;
	        padding: 10px;
	        border: solid 0px #d35400;
	        border-bottom: solid 2px #d35400;
	        font-size: 17px;
	        font-weight: lighter;
	        webkit-border-radius: 0px 0px 0px 0px;
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .borderbottom:hover
        {
	        color: #f39c12;
	        border: solid 0px #f39c12;
	        border-bottom: solid 2px #f39c12;
	        border-top: solid 2px #f39c12;
        }

        /*** BORDER EFFECT ***/
        .bordereffect
        {
	        color: #1abc9c;
	        background-color: Transparent;
	        height: 50px;
	        width: 215px;
	        padding: 10px;
	        border: solid 2px #1abc9c;
	        font-size: 17px;
	        font-weight: lighter;
	        font-family: Consolas;
	        webkit-border-radius: 0px 0px 0px 0px;
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .bordereffect:hover
        {
	        color: #fff;
	        border: solid 5px #fff;
	        cursor:pointer;
        }

        .bordereffect:focus
        {

        }

        /*** SIMPLE TRANSIT ***/
        .simpletransit
        {
	        color: #fff;
	        background-color: #9b59b6;
	        height: 50px;
	        width: 215px;
	        padding: 10px;
	        font-size: 17px;
	        -webkit-border-radius: 2px 2px 2px 2px;
	        -moz-border-radius: 2px 2px 2px 2px;
	        border-radius: 2px 2px 2px 2px;
	        transition: width 2s, height 4s;
	        -webkit-transition: width 1s, height 1s; /* For Safari 3.1 to 6.0 */
	        -webkit-transition-delay: 1s; /* Safari */
	        transition-delay: 1s;
        }

        .simpletransit:hover
        {
	        background-color: #ffdf9d;
	        color: #000;
	        height: 65px;
	        width: 375px;
	        padding: 10px;
	        border: solid 1px #fff;
	        -webkit-border-radius: 16px 2px 16px 2px;
	        -moz-border-radius: 16px 2px 16px 2px;
	        border-radius: 16px 2px 16px 2px;
	        font-size: 25px;
	        transition: opacity 1s, top 1s, right 1s;
	        cursor: pointer;
        }

        /*** IMAGE BUTTON ***/
        .imagebutton
        {
	        color: #fff;
	        background-color:darkslategrey;
            font-family: inherit;
	        height: 50px;
	        width: 215px;
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
	       
	        border-bottom: solid 6px #fff;
            background-color: burlywood;
            
        }
        .card {
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3);
          width: 218px
        }
  
        
        .auto-style8 {
            font-size: x-large;
        }
    
        
        .len {
            margin-top:15px;
        }
        /*** IMAGE BUTTON ***/
        .imagebutton
        {
	        color: #fff;
	        background-color:darkslategrey;
            font-family: inherit;
	        height: 50px;
	        width: 215px;
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
	       
	        border-bottom: solid 6px #fff;
            background-color: burlywood;
            
        }
        .card {
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3);
          width: 215px
        }
        .phantrang {
            margin-left:100px;
        }
        
        .auto-style19 {
            width: 246px;
            height:320px;

        }
        .auto-style20 {
            height: 44px;
            text-align: center;
             width:220px;
           
        }
        .auto-style22 {
           margin-left:50px;
             width: 247px;
            height:22px;
        }

         .auto-style21 {
           width:220px;
            
        }
        .len {
            margin-top:15px;
        }
        /*** IMAGE BUTTON ***/
        .imagebutton
        {
	        color: #fff;
	        background-color:#9d0202;
            font-family: inherit;
	        height: 50px;
	        width: 215px;
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
        .card {
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3);
          width: 215px
        }
        .phantrang {
            margin-left:100px;
        }

        .tenxe2 {
            text-decoration:none;
            font-size:17px;
           font-weight:bold;
        }
        .tenxe2:hover{
            text-decoration:underline;
            color:darkslategrey;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Danh sách xe" CssClass="auto-style8" Font-Bold="True" ForeColor="Black"></asp:Label>
            
    </p>
    
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaXe" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <div class="len">
                <td runat="server" style="">
                    <div class="auto-style19">
                        <div class="card">
                                 <a href="chitietxe.aspx?MaXe=<%# Eval("MaXe") %>" ><asp:Image ID="Image1" runat="server" CssClass="anh" Height="160px" ImageUrl='<%# Eval("Anh", "~/ImagesXe/{0}") %>' Width="215px" /></a>
                            
                       
                            <div class="auto-style20">
                               <asp:LinkButton ID="LinkButton2" runat="server" CssClass="tenxe2" PostBackUrl='<%# Eval("MaXe", "chitietxe.aspx?MaXe={0}") %>' Text='<%# Bind("TenXe") %>' ForeColor="Black"></asp:LinkButton>
                            </div>
                        
                            <div class="auto-style22"><strong>
                                <asp:Label ID="Label3" runat="server" Font-Size="16px" ForeColor="#990000" Text="Giá: "></asp:Label>
                                </strong>
                                <asp:Label ID="GiaBanLabel" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="#990000" Text='<%# Eval("GiaBan","{0:0,0₫}") %>'></asp:Label>
                            </div>
                        
                            
                                 <asp:Button ID="Button2" runat="server"  CssClass="imagebutton" PostBackUrl='<%# Eval("MaXe", "datmua.aspx?MaXe={0}") %>'
                                 Text="Đặt mua" />
                            
                        </div>
                    </div>
                </td>
                    </div>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">MaXe:
                    <asp:Label ID="MaXeLabel1" runat="server" Text='<%# Eval("MaXe") %>' />
                    <br />TenXe:
                    <asp:TextBox ID="TenXeTextBox" runat="server" Text='<%# Bind("TenXe") %>' />
                    <br />GiaBan:
                    <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                    <br />Anh:
                    <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">TenXe:
                    <asp:TextBox ID="TenXeTextBox" runat="server" Text='<%# Bind("TenXe") %>' />
                    <br />GiaBan:
                    <asp:TextBox ID="GiaBanTextBox" runat="server" Text='<%# Bind("GiaBan") %>' />
                    <br />Anh:
                    <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="len">
                <td runat="server" style="">
                    <div class="auto-style19">
                        <div class="card">
                                <a href="chitietxe.aspx?MaXe=<%# Eval("MaXe") %>" ><asp:Image ID="Image2" runat="server" CssClass="anh" Height="160px" ImageUrl='<%# Eval("Anh", "~/ImagesXe/{0}") %>' Width="215px" /></a>
                            
                       
                            <div class="auto-style20">
                                 <asp:LinkButton ID="LinkButton2" runat="server" CssClass="tenxe2" PostBackUrl='<%# Eval("MaXe", "chitietxe.aspx?MaXe={0}") %>' Text='<%# Bind("TenXe") %>' ForeColor="Black"></asp:LinkButton>
                            </div>
                        
                            <div class="auto-style22"><strong>
                                <asp:Label ID="Label3" runat="server" Font-Size="16px" ForeColor="#990000" Text="Giá: "></asp:Label>
                                </strong>
                                <asp:Label ID="GiaBanLabel" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="#990000" Text='<%# Eval("GiaBan","{0:0,0₫}") %>'></asp:Label>
                            </div>
                        
                            
                                 <asp:Button ID="Button2" runat="server"  CssClass="imagebutton" PostBackUrl='<%# Eval("MaXe", "datmua.aspx?MaXe={0}") %>'
                                 Text="Đặt mua" />
                            
                        </div>
                    </div>
                </td>
                    </div>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="" align="center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" style="font-size:17px">
                                        <Fields>
                                            <asp:NextPreviousPagerField ShowFirstPageButton="True" 
                                                ShowNextPageButton="False" ShowPreviousPageButton="False" 
                                                FirstPageText="Trang đầu" LastPageText="Trang cuối" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ShowLastPageButton="True" 
                                                ShowNextPageButton="False" ShowPreviousPageButton="False" 
                                                FirstPageText="Trang đầu" LastPageText="Trang cuối" />
                                        </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">MaXe:
                    <asp:Label ID="MaXeLabel" runat="server" Text='<%# Eval("MaXe") %>' />
                    <br />TenXe:
                    <asp:Label ID="TenXeLabel" runat="server" Text='<%# Eval("TenXe") %>' />
                    <br />GiaBan:
                    <asp:Label ID="GiaBanLabel" runat="server" Text='<%# Eval("GiaBan") %>' />
                    <br />Anh:
                    <asp:Label ID="AnhLabel" runat="server" Text='<%# Eval("Anh") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
            
    &nbsp;</p>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT [MaXe], [TenXe], [GiaBan], [Anh] FROM [XE] WHERE ([MaHangXe] = @MaHangXe)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaHangXe" QueryStringField="MaHangXe" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
    
    
</asp:Content>

