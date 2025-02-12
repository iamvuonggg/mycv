<%@ Page Title="" Language="C#" MasterPageFile="~/HomeChungCu.Master" AutoEventWireup="true" CodeBehind="CCFormHoaDonBill.aspx.cs" Inherits="QuanLyChungCu.CCFormHoaDonBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .wrapper {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .image {
            max-width: 300px;
            height: 500px;
            object-fit: cover;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
    <h2>HÓA ĐƠN CHUYỂN KHOẢN</h2>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="img">
                <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
</asp:Content>
