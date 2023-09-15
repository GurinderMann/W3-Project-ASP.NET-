<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="E_Commerce.Details" %>

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
        <div class="container justify-content-center align-items-center mt-5">
            <asp:Label ID="lblMessaggio" runat="server" Text="" Visible="false" ForeColor="Green"></asp:Label>
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-4 ">
                        <img runat="server" id="img" src="..." class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 id="nome" runat="server" class="card-title"></h5>
                            <p id="Descrizione" runat="server" class="card-text"></p>
                            <strong id="Prezzo" runat="server" class="card-text"></strong>

                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Aggiungi al carrello " OnClick="Aggiungi" />
                        <a href="Carrello.aspx" class="btn btn-primary">Carrello</a>

                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
