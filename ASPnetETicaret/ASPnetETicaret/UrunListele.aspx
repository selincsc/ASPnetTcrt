﻿<%@ Page Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true"  Inherits="ASPnetETicaret.UrunListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <form id="Form1" runat="server">
    <table class="table table-bordered">

        <tr>

            <th>ID</th>
            
            <th>Ürün Adı</th>
            <th>ImageLink</th>
            <th>Price</th>

            
            
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID")%></td>
                        <td><%# Eval("SERTIFIKA")%></td>
                        
                       <td>
                          
                       </td>
                    </tr>


                </ItemTemplate>



            </asp:Repeater>
        </tbody>

    </table>
    
    <asp:HyperLink NavigateUrl="~/Urunler.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary" BackColor="blue" >Ürün Ekle</asp:HyperLink>
    </form>
    
 
</asp:Content>


  