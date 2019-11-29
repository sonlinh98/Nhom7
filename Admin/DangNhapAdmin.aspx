<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhapAdmin.aspx.cs" Inherits="DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập hệ thống</title> 
    <link href="css/style.css" rel="stylesheet" />
    <style>
        a#linkDangNhap {
            color: white;
            font-weight: 400;
        }

        .auth-wrapper .auth-content {
            top: -100px;
        }

            .auth-wrapper .auth-content:not(.container) {
                width: 460px;
            }
    </style>
   
</head>
<body>
    <form id="frmDangNhap" runat="server">
        <div class="auth-wrapper">
            <div class="auth-content">
                <div class="card">
                    <div class="row align-items-center text-center">
                        <div class="col-md-12">
                            <div class="card-body">
                                <img src="images/logo-login.png" alt="logo" class="img-fluid mb-2" />
                                <h4 class="mb-3 f-w-400">Đăng nhập hệ thống</h4>
                                <div class="form-group text-center mt-3">
                                    <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" Text="    "></asp:Label>
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="feather icon-mail"></i></span>
                                    </div>
                                    <asp:TextBox ID="txtTenTaiKhoan" runat="server"  class="form-control" placeholder="Nhập tên tài khoản của bạn"></asp:TextBox>
                                </div>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="feather icon-lock"></i></span>
                                    </div>
                                    <asp:TextBox ID="txtMatKhau" runat="server" class="form-control" placeholder="Nhập mật khẩu của bạn" TextMode="Password"></asp:TextBox>
                                </div>
                                
                                <div class="form-group text-left mt-2">
                                    <div class="checkbox checkbox-primary d-inline">
                                        <input type="checkbox" name="checkbox-fill-1" id="checkbox-fill-a1" checked="" />
                                        <label for="checkbox-fill-a1" class="cr">Duy trì đăng nhập</label>
                                    </div>
                                    
                                </div>
                                <asp:LinkButton ID="linkDangNhap" runat="server" CssClass="btn btn-block btn-primary mb-4" OnClick="linkDangNhap_Click">
                                  Đăng nhập
                                </asp:LinkButton>
                                <p class="mb-2 text-muted"> 
                                    <asp:LinkButton ID="LinkLayLaiMatKhau" runat="server" CssClass="f-w-400" PostBackUrl="~/Admin/LayLaiMatKhau.aspx">
                                  Quên mật khẩu?
                                </asp:LinkButton>
                                    </p>
                                <p class="mb-2 text-muted"> 
                                    <asp:SqlDataSource ID="SqlDsTaiKhoan" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="SELECT DISTINCT [TenTaiKhoan], [MatKhau] FROM [TAI_KHOAN] WHERE (([TenTaiKhoan] = @TenTaiKhoan) AND ([MatKhau] = @MatKhau) AND ([Quyen] = @Quyen))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtTenTaiKhoan" Name="TenTaiKhoan" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="txtMatKhau" Name="MatKhau" PropertyName="Text" Type="String" />
                                            <asp:Parameter DefaultValue="admin" Name="Quyen" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/vendor-all.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
