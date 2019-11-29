<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tintuc.aspx.cs" Inherits="tintuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .card {
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
          width: 720px;
          height:100px;
        }

        .button-phantrang {
            margin-left:150px;
        }

         .imagebutton
        {
	        color: #fff;
	        background-color:darkslategrey;
            font-family: inherit;
	        height: 35px;
	        width: 70px;
	        padding: 5px;
	        border: solid 0px #d4d4d4;
	        border-bottom: solid 2px #d4d4d4;
	        font-size: 14px;
	        font-weight: lighter;
	        
	        -moz-border-radius: 0px 0px 0px 0px;
	        border-radius: 0px 0px 0px 0px;
        }

        .imagebutton:hover
        {
	       
	        border-bottom: solid 0px #fff;
            background-color: burlywood;
            
        }

        	.container {
           width: 720px;
            padding:10px;
            
          
        }
	        .post {
           width: 160px;
           height: 100px;
  
           float: left;
        }
        .sidebar {
         width:560px;
         height: 100px;
 
         float: right;
        }
        .sidebar:hover {
            color:blue;
        }
        thea {
            color:blue;
        }
        .thea:hover {
            color:blue;
    
        }

       
        .auto-style3 {
            font-size: large;
            text-decoration:none;
        }
        .auto-style3:hover {
            color:darkslategrey;
            text-decoration:underline;
        }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Tin tức"></asp:Label>
    </h1>
    <p>&nbsp;</p>
<p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <div  class="container">
                <div class="card">
                	   <div class="post">                       
                                <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("Anh","~/ImagesTinTuc/{0}") %>' Width="150px" />   
                           </div>

                         <div class="sidebar">
                             
                                <strong>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" Text='<%# Bind("mota") %>' PostBackUrl='<%# Eval("matin", "ChiTietTinTuc.aspx?matin={0}") %>'></asp:LinkButton>
                                </strong>
                            
                            <br />
                             <br />
                            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Ngày đăng: "></asp:Label>
                        
                        <asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="Black" Text='<%# Bind("NgayTao","{0:dd/MM/yyyy}") %>'></asp:Label>
                      </div>
                </div>
              </div>     
        </ItemTemplate>
    </asp:DataList>
    </p>
    <br />

    <div class="button-phantrang">
    <asp:Button ID="btnTrangDau" runat="server" CssClass="imagebutton" OnClick="Button1_Click" Text="Trang đầu" />
    <asp:Button ID="btnQuayLai" runat="server" CssClass="imagebutton" OnClick="Button2_Click" Text="<<" />
    <asp:Button ID="btnTiep" runat="server" CssClass="imagebutton" OnClick="Button3_Click" Text=">>" />
    <asp:Button ID="btnTrangCuoi" runat="server" CssClass="imagebutton" OnClick="Button4_Click" Text="Trang cuối" />
    </div>
    
<p>&nbsp;</p>
</asp:Content>

