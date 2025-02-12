<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdmin.Master" AutoEventWireup="true" CodeBehind="AdminListAnhCanHo.aspx.cs" Inherits="QuanLyChungCu.AdminListAnhCanHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .container {
            display: flex;
            width: 95%;
            max-width: 1400px;
            justify-content: space-between;
            align-items: flex-start;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            background: #fff;
            margin: 20px auto;
        }

        .left {
            width: 35%;
            padding: 20px;
            color: black;
            box-sizing: border-box;
        }

        .right {
            width: 60%;
            padding: 20px;
            box-sizing: border-box;
        }

        .left_textbox {
            width: 260px;
            height: 25px;
            outline: none;
        }

        .left p {
            font-weight: bold;
        }

        .left .box {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
        }

        .button {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
            gap: 10px;
        }

        .button_info {
            padding: 10px 20px;
            gap: 10px;
            background-color: #444444;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .button_info:hover {
            background-color: darkgrey; /* Đổi màu nền khi hover */
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15); /* Tăng bóng khi hover */
            transform: translateY(-2px); /* Nút nổi lên khi hover */
        }

        .img-load {
            width:150px;
            height:160px;
            margin: 10px 80px;
        }

        .fileupload {
            margin: 10px 80px;
        }

        .img {
            width:100px;
            height:100px;
        }

        .custom-gridview {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            font-family: Arial, sans-serif;
            background-color: black;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Tạo bóng */
            overflow: hidden; /* Bo viền và nội dung */
        }

        /* Phong cách cho hàng tiêu đề */
        .custom-gridview th {
            background-color: #444444; /* Màu nền tiêu đề */
            color: white; /* Màu chữ */
            text-align: left; /* Căn chữ sang trái */
            padding: 12px; /* Khoảng cách bên trong ô */
            font-weight: bold;
        }

        /* Phong cách cho các hàng */
        .custom-gridview td {
            padding: 12px; /* Khoảng cách bên trong ô */
            text-align: left; /* Căn chữ sang trái */
            color: #333; /* Màu chữ chính */
        }

        /* Phân biệt màu nền từng hàng */
        .custom-gridview tr:nth-child(even) {
            background-color: #f2f2f2; /* Màu nền hàng chẵn */
        }

        .custom-gridview tr:nth-child(odd) {
            background-color: #ffffff; /* Màu nền hàng lẻ */
        }

        /* Hiệu ứng hover */
        .custom-gridview tr:hover {
            background-color: #e0f7fa; /* Đổi màu khi hover */
            cursor: pointer; /* Con trỏ chỉ tay */
        }

        .user-btn {
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="left">
                <div style="width:100%;">
                        <h2>ADD HÌNH ẢNH</h2>
                        <div class="box">
                            <p>ID Ảnh</p>
                            <div>
                                <asp:Label CssClass="left_textbox" ID="Label2" runat="server" Text=""></asp:Label>
                            </div>
                            
                        </div>
                        <div class="box">
                            <p>ID Căn Hộ</p>
                            <div>
                                <asp:Label CssClass="left_textbox" ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                            
                        </div>
                        <div class="box">
                            <p>Upload Ảnh</p>
                            <div>
                                <asp:Image  ID="Image2" CssClass="img-load" runat="server" />
                                <asp:FileUpload CssClass="fileupload" ID="FileUpload1" runat="server" />
                            </div>
                            
                        </div>
                        <div class="button">
                            <asp:Button CssClass="button_info" ID="them" runat="server" Text="Create" OnClick="them_Click" />
                            <asp:Button CssClass="button_info" ID="xoa" runat="server" Text="Delete" OnClick="xoa_Click" />
                        </div>
                    </div>
        </div>
        <div class="right">
            <h2>DANH SÁCH ẢNH CĂN HỘ</h2>
            <asp:GridView CssClass="custom-gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="SelectLink" CssClass="user-btn" runat="server" CommandName="Select"><i class="fa-solid fa-image"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="IDHinhAnh" HeaderText="ID Ảnh" />
                    <asp:BoundField DataField="IDCanHo" HeaderText="ID Căn Hộ" />
                    <asp:TemplateField HeaderText="Hình Ảnh">
                        <ItemTemplate>
                            <asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
