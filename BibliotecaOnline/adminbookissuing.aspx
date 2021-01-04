<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="BibliotecaOnline.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Imprumutare carti</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>ID membru</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID membru"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>ID carte</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID carte"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Nume membru</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nume membru" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Nume carte</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nume carte" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>De la data</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="De la" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Pana la data</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Pana la" TextMode="Date"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-6">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-block" ID="Button1" runat="server" Text="Imprumutare" />
                                    </div>
                                </center>
                            </div>
                            <div class="col-6">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-success btn-block" ID="Button3" runat="server" Text="Returnare" />
                                    </div>
                                </center>
                            </div>
                            
                        </div>
                    </div>
                </div>

                <a href="homepage.aspx"><< Inapoi la pagina de start</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Carti imprumutate</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
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
