<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="E_Commerce.Carrello1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
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
        <div class="container w-50 mt-5 justify-content-center align-items-center">
            <asp:Repeater ID="rptProdotti" runat="server">
                <ItemTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Nome</th>
                                <th scope="col">Prezzo</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><%# Eval("Nome") %></td>
                                <td>Prezzo: €<%# Eval("Prezzo", "{0:N2}") %></td>
                                <td>
                                    <asp:Button ID="btnRimuovi" runat="server" Text="Rimuovi" CssClass="btn btn-danger"
                                        OnClick="btnRimuovi_Click" CommandArgument='<%# Container.ItemIndex %>' />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ItemTemplate>
                <FooterTemplate>
                    <table class="table table-bordered">
                        <tfoot>
                            <tr>
                                <td colspan="2"><strong>Totale:</strong></td>
                                <td><%# CalcolaTotale() %></td>

                            </tr>
                        </tfoot>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Button ID="btnSvuotaCarrello" runat="server" Text="Svuota Carrello" CssClass="btn btn-danger" OnClick="btnSvuotaCarrello_Click" />
            <a class="btn btn-success  " href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Concludi l'ordine </a>
        </div>

    </form>
</body>
</html>
