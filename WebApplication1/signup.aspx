<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registation</h4><br />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full name"></asp:TextBox><br /><br />
                                </div>
                                
                            </div>

                             <div class="col-md-6">
                                
                                 <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="date of birth" TextMode="Date"></asp:TextBox><br /><br />
                                </div>

                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact details</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox><br /><br />
                                </div>
                                
                            </div>

                             <div class="col-md-6">
                                
                                 <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter email" TextMode="Email"></asp:TextBox><br /><br />
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Pin</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pin" TextMode="Number"></asp:TextBox><br /><br />
                                </div>
                                
                            </div>

                             <div class="col-md-4">
                                
                                 <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="city" ></asp:TextBox><br /><br />
                                </div>

                            </div>
                            <div class="col-md-4">
                                
                                 <label>state</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:listItem Text="Central" Value="Central" />
                                        <asp:listItem Text="Eastern" Value="Eastern" />
                                        <asp:listItem Text="North Central" Value="North Central" />
                                        <asp:listItem Text="Northern" Value="Northern" />
                                        <asp:listItem Text="North Western" Value="North Western" />
                                        <asp:listItem Text="Sabaragamuwa" Value="Sabaragamuwa" />
                                        <asp:listItem Text=" Southern" Value=" Southern" />
                                        <asp:listItem Text="Uva" Value="Uva" />
                                        <asp:listItem Text="Western" Value="Western" />



                                    </asp:DropDownList> <br /><br />
                                </div>

                            </div>
                        </div>




                         <div class="row">
                            <div class="col-md-12">
                                
                                <label>Ful address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="MultiLine"></asp:TextBox><br /><br />
                                </div>
                             
                              
                            </div>
                             <span class="badge rounded-pill bg-primary">Logging Credential</span>
                               <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User Id" TextMode="Number"></asp:TextBox><br /><br />
                                </div>
                                
                            </div>

                             <div class="col-md-6">
                                
                                 <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br /><br />
                                </div>

                            </div>
                        </div>
                             <div class="form-group">
                                    <asp:Button class="btn btn-primary w-100 btn-lg"  ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" /><br /><br />
                                </div>

                        </div>


                    </div>
                </div>
                <a href="homepage.aspx">back to home</a>
            </div>
        </div>
    </div>
</asp:Content>
