<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Life_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Login Page</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect"/>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet"/>
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet"/>
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet"/>

  <link href="assets/css/style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="panelError" Visible="false" runat="server">
             <div class="alert alert-danger" role="alert">
               <asp:Label ID="lblLoginError" runat="server" Enabled="false" Text="Maybe UserName or Password is Wrong" Visible="false"></asp:Label>
</div>
        </asp:Panel> 
          
       <main>
           <div class="container">
            
           <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="Login.aspx" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="" />
                  <span class="d-none d-lg-block">Life Admin</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <%--<p class="text-center small">Enter your username & password to login</p>--%>
                  </div>
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Username</label>
                      
                        
                          <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                       <%-- <input type="text" name="username" class="form-control" id="yourUsername" required>--%>
                        <%--<div class="invalid-feedback">Please enter your username.</div>--%>
                          <asp:RequiredFieldValidator ID="RFVusername" runat="server" ControlToValidate="txtusername" ErrorMessage="Please enter username." ForeColor="Red"></asp:RequiredFieldValidator>
                     
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                      <%--<input type="password" name="password" class="form-control" id="yourPassword" required>--%>
                      <%--<div class="invalid-feedback">Please enter your password!</div>--%>
                        <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ErrorMessage="Please enter password!" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <%--<div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                      </div>
                    </div>--%>
                   <br />
                    <div class="col-12">
                        <asp:Button ID="btnLogin" CssClass="btn btn-primary w-100" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </section>
           </div>
       </main>
    </form>
      <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>
