using CalculadoraAPI.Domain.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;

namespace CalculadoraAPI.Controllers
{
    [RoutePrefix("api/calculadora/v1")]
    public class CalculadoraController : ApiController
    {

        public CalculadoraController()
        {

        }
        [HttpPost]
        [ResponseType(typeof(Double))]
        public HttpResponseMessage Calcular(CalculatorInputDTO dto)
        {
            HttpResponseMessage response;
            try
            {
                CalculadoraAPI.Business.Services.CalculadoraService servico = new Business.Services.CalculadoraService();

                Double resultado = servico.Calcular(dto);

                response = Request.CreateResponse(HttpStatusCode.OK, resultado);
            }
            catch (Exception ex)
            {
                response = Request.CreateResponse(HttpStatusCode.BadRequest, "Erro  :" + ex.Message);
            }
            return response;
        }

        [Route("get-ultimos")]
        [HttpGet]
        [ResponseType(typeof(List<Double>))]
        public HttpResponseMessage GetUltimos()
        {

            HttpResponseMessage response;

            try
            {
                CalculadoraAPI.Business.Services.CalculadoraService servico = new Business.Services.CalculadoraService();
                List<CalculadoraAPI.Domain.DTO.CalculatorOutputDTO> resultado = servico.GetUltimosResultaos();

                response = Request.CreateResponse(HttpStatusCode.OK, resultado);
            }
            catch (Exception ex)
            {
                response = Request.CreateResponse(HttpStatusCode.BadRequest, "Erro  :" + ex.Message);
            }
            return response;
        }

        //// GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        //// GET api/<controller>/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        //// POST api/<controller>
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/<controller>/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/<controller>/5
        //public void Delete(int id)
        //{
        //}
    }
}