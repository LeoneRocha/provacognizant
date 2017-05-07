using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using CalculadoraFrontMVC.Models;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace CalculadoraFrontMVC.Services
{
    public class CalculadoraRESTService
    {
        // readonly string uriBase = "http://localhost:55112/api/calculadora/v1/";
        readonly string uriBase = "http://provacognizantapi.azurewebsites.net/api/calculadora/v1/";
        public async Task<List<OutputCalculadoraModel>> GetResultados()
        {
            using (HttpClient httpClient = new HttpClient())
            {
                String url = string.Format("{0}{1}", uriBase, "get-ultimos");
                return JsonConvert.DeserializeObject<List<OutputCalculadoraModel>>(await httpClient.GetStringAsync(url));
            }
        }

        public async Task<Double> Caculate(InputCalculadoraModel dto)
        {
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(uriBase);
            httpWebRequest.ContentType = "application/json";
            httpWebRequest.Method = "POST";
            string content = "";
            using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
            {
                string json = new JavaScriptSerializer().Serialize(dto);

                streamWriter.Write(json);
            }

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                content = streamReader.ReadToEnd();
            }
            return await Task.Run(() => JsonConvert.DeserializeObject<Double>(content));
        }
    }
}