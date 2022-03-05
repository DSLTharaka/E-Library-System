<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBookIssuing.aspx.cs" Inherits="WebApplication1.adminBookIssuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4><br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/books.png" />
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
                                
                                 <label>Member Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Id" TextMode="SingleLine"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                                
                             <div class="col-md-6">
                                <label>Book Id</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book Id" TextMode="Number"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" /></div></div>
                               
                                    
                                </div>
                            </div> <br /><br />

                        
                        <div class="row">
                                                       
                             <div class="col-md-6">
                                
                                 <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                                
                             <div class="col-md-6">
                                
                                 <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                            </div>

                        <div class="row">
                                                       
                             <div class="col-md-6">
                                
                                 <label>Start date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start date" TextMode="Date"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                                
                             <div class="col-md-6">
                                
                                 <label>End date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Name" TextMode="Date"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-success" ID="Button2" runat="server" Text="Issue" />
                                
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-warning" ID="Button3" runat="server" Text="Return" />
                                
                            </div>
                          

                        </div>

                         


                       

                        




                       

                    </div>
                    <a href="homepage.aspx">back to home</a>
                </div>
               
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                       
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4><br />
                                    
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
