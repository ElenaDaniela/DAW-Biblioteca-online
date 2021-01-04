<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="BibliotecaOnline.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-bg2.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Functii</h2>
                        <p><b>Cele 3 functii principale</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/digital-inventory.png" />
                        <h4>Inventarul digital</h4>
                        <p class="text-center">Aici gasiti cartile pe care le-ati imprumutat. Nu uitati sa le returnati!</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Cauta carti online</h4>
                        <p class="text-center">Aici puteti cauta cartile pe care le doriti.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/defaulters-list.png" />
                        <h4>Dusmanul cartilor</h4>
                        <p class="text-center">Aici se afla persoanele care nu au returnat/au stricat cartile.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section>
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Pasi</h2>
                        <p><b>Cei 3 pasi principali</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png" />
                        <h4>Inregistrare</h4>
                        <p class="text-center"><b>Pasul 1: </b>Te inregistrezi la noi. </p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Cauta carti online</h4>
                        <p class="text-center"><b>Pasul 2: </b>Cauti carile pe care le doresti.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png" />
                        <h4>Mai viziteaza-ne!</h4>
                        <p class="text-center"><b>Pasul 3: </b>Ne mai vizitezi pentru a mai imprumuta/returna cartile!</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
