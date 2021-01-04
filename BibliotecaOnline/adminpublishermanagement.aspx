<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="BibliotecaOnline.adminpublishermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Detalii editor</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/publisher.png" />
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
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>ID</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Nume editor</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nume editor"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-block" ID="Button1" runat="server" Text="Adauga" />
                                    </div>
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-success btn-block" ID="Button3" runat="server" Text="Actualizeaza" />
                                    </div>
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-danger btn-block" ID="Button4" runat="server" Text="Sterge" />
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
                                    <h3>Lista editori</h3>
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
