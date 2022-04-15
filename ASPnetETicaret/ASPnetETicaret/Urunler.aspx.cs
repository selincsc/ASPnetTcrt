using System;
using System.Web;
using System.Web.UI;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

using RestSharp;
using System.Windows.Forms;
using Firebase.Database;

namespace ASPnetETicaret
{

    public partial class Urunler : System.Web.UI.Page
    {
        UrunlerClass result = null;

        private const string BasePath = "https://empty-60318-default-rtdb.firebaseio.com";
        private const string FirebaseSecret = "ilHLtgweEeecub6oCK720mxpIc7dYfYrQ1WHlAhw";
        private static IFirebaseClient client;

        Firebase firebase = new Firebase();
       // IFirebaseConfig config = new FirebaseConfig
       // {
       //     AuthSecret = "ilHLtgweEeecub6oCK720mxpIc7dYfYrQ1WHlAhw",
       //     BasePath = "https://empty-60318-default-rtdb.firebaseio.com"
       // };
        
        protected async void Page_Load(object sender, EventArgs e)
        {

            IFirebaseConfig config = new FirebaseConfig
            {
                AuthSecret = FirebaseSecret,
                BasePath = BasePath
            };
            client = new FireSharp.FirebaseClient(config);

            GuncellemeID.Text = "aaaa";
            BaslikText.Text = "bbb";
            AltbaslikText.Text = "CCC";
            AciklamaText.Text = "HHHHH";
            TarihText.Text = "CDFGH";
            var urun = GetUrun();
            if (client != null)
            {
                Label5.Text = "Connected";
            }
        }
        
        
        protected void Deneme(object sender, EventArgs e)
        {
            Console.WriteLine("Deneme"); 
        }
        protected async void Button1_Click(object sender, EventArgs e)
        {
          
            Console.WriteLine("Girdi");

             
            var urun = GetUrun();
            Console.WriteLine(urun.Name);
            SetResponse response = await client.SetTaskAsync("Urunler", "123");
            _ =  client.PushTaskAsync("Urunler", "hello");
            _ = client.Push("Urunler", "12");
         

            //     try
            //     {
            //         
            //       
            //         if(result.Id != null)
            //         {
            //             Console.WriteLine("Başarılı");
            //         }
            //         else
            //         {
            //             Console.WriteLine("Hatalı");
            //         }
            //         Label4.Text = "Gönderildi";
            //         Console.WriteLine(urun);
            //
            //     }
            //     catch
            //     {
            //         Console.WriteLine("Hoppalaaa");
            //         Label5.Text = "Error";
            //     }



        }

        private UrunlerClass GetUrun()
        {
            return new UrunlerClass()
            {
                Id = GuncellemeID.Text,
                Name = BaslikText.Text,
                Price = AltbaslikText.Text,
                ImageLink = AciklamaText.Text,
                Piece = TarihText.Text

            };
        }
    }
}
