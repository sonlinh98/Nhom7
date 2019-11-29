<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LayLaiMatKhau.aspx.cs" Inherits="DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lấy lại mật khẩu</title>
    <link href="css/style.css" rel="stylesheet" />
    <style>
        a#linkLayLaiMatKhau {
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
                                <img src="images/logo-login.png" alt="logo" class="img-fluid mb-4" />
                                <h4 class="mb-3 f-w-400">Lấy lại mật khẩu</h4>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="feather icon-mail"></i></span>
                                    </div>
                                    <input type="email" class="form-control" placeholder="Nhập email của bạn" />
                                </div>
                                <asp:LinkButton ID="linkLayLaiMatKhau" runat="server" CssClass="btn btn-block btn-primary mb-4" PostBackUrl="~/Admin/DangNhap.aspx">
                                  Lấy lại mật khẩu
                                </asp:LinkButton>
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
