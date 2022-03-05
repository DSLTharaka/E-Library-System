<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="WebApplication1.adminAuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container" id=" ">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Auther details</h4><br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/writer.png" />
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
                                <label>Auther Id</label>
                                <div class="form-group">
                                    <div class="input-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Id" TextMode="Number"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" /></div></div>
                               
                                    
                                </div>
                            
                             <div class="col-md-8">
                                
                                 <label>Auther Name</label>
                                <div class="form-group">
                                    

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                      
                                
                                </div>

                           
                        </div>
                                
                            </div> <br /><br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-success" ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" />
                                
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                                
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg w-100 btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                                
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
                                    <h4>Auther List</h4><br />
                                    
                                </center>
                            </div>
                        </div>
                         
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                 
                        

                        




                         


                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
