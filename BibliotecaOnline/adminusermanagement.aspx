<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="BibliotecaOnline.adminusermanagement" %>
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
                                    <h3>Detalii membrii</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
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

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>ID membru</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID membru"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Nume membru</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nume intreg" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Status</label>
                                   <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Status cont" ReadOnly="True"></asp:TextBox>
                                       <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                       <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                       <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>

                                </div>
                            </div>

                            
                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Data nasterii</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Data nasterii" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Numar telefon</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Numar telefon" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Tara</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Tara" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Oras</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Oras" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Cod postal</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Cod postal" ReadOnly="True"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Adresa</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Adresa" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">
                            <div class="col-12">
                                <center>
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-danger btn-block" ID="Button3" runat="server" Text="Sterge permanent" />
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
                                    <h3>Lista membrii</h3>
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
