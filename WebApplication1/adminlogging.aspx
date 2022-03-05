 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogging.aspx.cs" Inherits="WebApplication1.adminlogging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>                                    
                                    <img width="150" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Logging</h3><br />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox><br /><br />
                                </div>
                                <label>Password</label><br />
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br /><br />
                                </div>
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary w-100 btn-lg"  ID="Button1" runat="server" Text="login" OnClick="Button1_Click1" /><br /><br />
                                </div>
                                <div class="form-group">
                                     <a href="signup.aspx"> <input class="btn btn-info w-100 btn-lg" id="Button2" type="button" value="sign up" /></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx">back to home</a>
            </div>
        </div>
    </div>
</asp:Content>
