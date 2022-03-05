<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="WebApplication1.adminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher details</h4><br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/publisher.png" />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher Id</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Id" TextMode="Number"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" /></div></div>
                               
                                    
                                </div>
                            
                             <div class="col-md-8">
                                
                                 <label>Publisher Name</label>
                                <div class="form-group">
                                    

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                                
                            </div> <br /><br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-success" ID="Button2" runat="server" Text="ADD" />
                                
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-warning" ID="Button3" runat="server" Text="Update" />
                                
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                                
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
                                    <h4>Publisher List</h4><br />
                                    
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
