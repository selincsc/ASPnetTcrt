using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;
namespace ASPnetETicaret
{
    public class Firebase
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "ilHLtgweEeecub6oCK720mxpIc7dYfYrQ1WHlAhw",
            BasePath = "https://empty-60318-default-rtdb.firebaseio.com"
        };
        IFirebaseClient client;
        public Firebase()
        {
            isConnection();
        }
        internal bool isConnection()
        {
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
                return true;
            return false;
        }
        UrunlerClass result = null;
        internal async Task<bool> Insert(UrunlerClass urunler)
        {
            var response = await client.SetTaskAsync("Urunler/" + urunler.Id + "/", urunler);
            result = response.ResultAs<UrunlerClass>();

            if (result.Id != null)
                return true;

            return false;
        }
        internal bool EklemeYap(UrunlerClass urunler)
        {
            SetResponse response;
            response = client.Set("Urunler/" + urunler.Id + "/", urunler);
            result = response.ResultAs<UrunlerClass>();
            if(result.Id != null)
            {
                return true;
            }
            return false;
        }
        internal async Task<bool> Update(UrunlerClass urunler)
        {
            var response = await client.UpdateTaskAsync("Urunler/" + urunler.Id.ToString(), urunler);
            result = response.ResultAs<UrunlerClass>();

            if (result.Id != null)
                return true;

            return false;
        }
        internal async Task<bool> Delete(UrunlerClass   urunler)
        {
            var response = await client.DeleteTaskAsync("Urunler/" + urunler.Id.ToString());

            if (response.Success)
                return true;

            return false;
        }
        List<UrunlerClass> listUrunler;
        internal async Task<List<UrunlerClass>> List()
        {
            listUrunler = new List<UrunlerClass>();
            var response = await client.GetTaskAsync("Urunler");
            var result = response.Body;
            var data = JsonConvert.DeserializeObject<Dictionary<string, UrunlerClass>>(result);

            foreach (var item in data)
            {
                UrunlerClass urunler = item.Value;
                listUrunler.Add(urunler);
            }

            return listUrunler;
        }
    }
}

