<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdmin.Master" AutoEventWireup="true" CodeBehind="AdminThanhVienHGD.aspx.cs" Inherits="QuanLyChungCu.AdminThanhVienHGD" %>

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
            margin: 20px 0;
            gap: 10px;
            justify-content: space-between;
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
            <div class="left-on">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table style="width: 100%;">
                            <div class="table">
                               <div class="box">
                                  <p colspan="2">Chủ Hộ</p>
                               </div>
                               <div class="box">
                                  <p>ID Hộ</p>
                                  <div>
                                    <asp:Label CssClass="left_textbox" ID="Label2" runat="server"  Text='<%# Eval("IDHoGD") %>'></asp:Label>
                                  </div>
                               </div>            
                               <div class="box">
                                   <p>Tên Chủ Hộ</p>
                                   <div>
                                        <asp:Label CssClass="left_textbox" ID="Label1" runat="server" Text='<%# Eval("TenChuHo") %>'></asp:Label>
                                   </div>
                               </div>
                               <div class="box">
                                   <p colspan="3">Thêm Thành Viên</p>
                               </div>
                               <div class="box">
                                   <p>ID Thành Viên</p>
                                   <div>
                                        <asp:TextBox CssClass="left_textbox" ID="txtidthanhvien" runat="server" Enabled="false" ReadOnly="true" placeholder="Enter id"></asp:TextBox>
                                   </div>
                                </div>
                                <div class="box">
                                    <p>Họ tên</p>
                                    <div>
                                         <asp:TextBox CssClass="left_textbox" ID="txt_hoten" runat="server" placeholder="Enter name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="box">
                                    <p>Ngày sinh</p>
                                    <div>
                                         <asp:TextBox CssClass="left_textbox" ID="txt_ngaysinh" runat="server" placeholder="Enter dd/MM/YYYY"></asp:TextBox>
                                     </div>
                                 </div>
                                 <div class="box">
                                      <p>Mối quan hệ</p>
                                       <div>
                                          <asp:TextBox CssClass="left_textbox" ID="txt_mqh" runat="server" placeholder="Enter mối quan hệ"></asp:TextBox>
                                      </div>
                                 </div>
                                 <div class="button">
                                          <asp:Button CssClass="button_info" ID="btn_them" runat="server" Text="Create" OnClick="btn_them_Click" />
                                          <asp:Button CssClass="button_info" ID="btn_sua" runat="server" Text="Update" OnClick="btn_sua_Click" />
                                          <asp:Button CssClass="button_info" ID="btn_xoa" runat="server" Text="Delete" OnClick="btn_xoa_Click" />
                                          <asp:Button CssClass="button_info" ID="btn_clear" runat="server" Text="ClearForm" OnClick="btn_clear_Click" />
                                 </div>
                             </div>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <div class="right">
            <h3>Thành Viên Gia Đình</h3>
            <asp:GridView CssClass="custom-gridview" ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="SelectLink" CssClass="user-btn" runat="server" CommandName="Select"><i class="fa-solid fa-child"></i></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="IDThanhVien" HeaderText="ID Thành Viên" />
                    <asp:BoundField DataField="IDHoGD" Visible="false" />
                    <asp:BoundField DataField="HoTen" HeaderText="Họ tên" HtmlEncode="false" />
                    <asp:BoundField DataField="NgSinh" HeaderText="Ngày Sinh" />
                    <asp:BoundField DataField="MoiQuanHe" HeaderText="Mối Quan Hệ" HtmlEncode="false" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
