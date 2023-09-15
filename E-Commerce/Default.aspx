<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_Commerce.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">BuyIT</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Default.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Carrello.aspx">Carello</a>
                    </li>

                </ul>
            
            </div>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row row-cols-6 ">
                <asp:Repeater ID="rptProdotti" runat="server">
                    <ItemTemplate>

                      <div class="col-md-4 mb-3 ">
                        <div class="card ms-2 mt-3 h-100" style="width: 18rem;">
                            <img src='<%# Eval("Immagine") %>' class="card-img-top h-50 pt" alt="...">
                            <div class="card-body d-flex flex-column justify-content-around">
                                <h5 class="card-title"><%# Eval("Nome") %></h5>
                                <p class="card-text">Prezzo: $<%# Eval("Prezzo", "{0:N2}") %></p>
                                <a href='<%# "Details.aspx?ID=" + Eval("IdProdotto") %>' class="btn btn-primary">Vai alla pagina</a>
                            </div>
                        </div>
                          </div>

                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </form>
</body>
</html>
