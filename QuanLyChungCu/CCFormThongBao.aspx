<%@ Page Title="" Language="C#" MasterPageFile="~/HomeChungCu.Master" AutoEventWireup="true" CodeBehind="CCFormThongBao.aspx.cs" Inherits="QuanLyChungCu.CCFormThongBao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Xóa các phần ảnh nền nếu có */
        .img {
            width: 100%; /* Đặt chiều rộng của ảnh là 100% để ảnh chiếm toàn bộ chiều rộng của phần chứa */
            max-width: 1200px;
            height: 100px; /* Đặt chiều cao tự động để giữ tỷ lệ ảnh */
            display: block; /* Đảm bảo ảnh là một phần tử block */
            margin: 0 auto; /* Căn giữa ảnh ngang */
            object-fit: contain; /* Giữ tỷ lệ ảnh, không làm biến dạng ảnh */
        }

        .dataList-container {
            display: flex;
            justify-content: center; /* Căn giữa theo chiều ngang */
            align-items: center; /* Căn giữa theo chiều dọc */
            width: 90%;
            margin: 0 auto; /* Căn giữa ngang container */
            gap: 20px;
        }

        .item {
            padding: 12px;
            border-radius: 8px;
            width: 300px;
            height: 40px;
        }

        /* Các cột bên trong item */
        .column {
            padding: 8px;
            font-size: 14px;
            color: #333;
            text-align: center;
            display: flex;
            justify-content: space-between;
            gap: 15px;
            margin: 15px 0;
        }


        /* Nút Xem */
        .link-button {
            display: inline-block;
            margin-bottom: 10px;
            padding: 8px 14px;
            background-color: #333333;
            color: #fff;
            font-size: 14px;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .link-button:hover {
            background-color: #555555;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image CssClass="img" ID="Image1" runat="server" ImageUrl="~/images/bao.png" />
        <asp:DataList CssClass="dataList-container" ID="DataList1" runat="server" RepeatColumns="1">
           <ItemTemplate>
                <div class="item">
                    <div class="column">
                        <asp:Label CssClass="row" ID="Label1" runat="server" Text='<%# Eval("IDThongBao") %>'></asp:Label>
                        <asp:Label CssClass="row" ID="Label2" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                        <asp:LinkButton ID="btnXem" runat="server" CommandArgument='<%# Eval("IDThongBao") %>' OnClick="btnXem_Click" CssClass="link-button">Xem</asp:LinkButton>
                    </div>
                </div>
        </ItemTemplate>
        </asp:DataList>
</asp:Content>



