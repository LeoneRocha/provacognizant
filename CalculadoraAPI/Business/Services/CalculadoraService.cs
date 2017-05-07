using CalculadoraAPI.Domain.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using CalculadoraAPI.Models;

namespace CalculadoraAPI.Business.Services
{
    public class CalculadoraService : ICalculadoraService
    {

        public CalculadoraService()
        {
        } 

        public Double Calcular(CalculadoraAPI.Domain.DTO.CalculatorInputDTO dto)
        {
            Double n1 = dto.Entrada1;
            Double n2 = dto.Entrada2;
            string operacao = dto.Operacao;
            Double resultado = 0;
            try
            {
                if (operacao == "+")
                {
                    resultado = n1 + n2;
                }
                else if (operacao == "-")
                {
                    resultado = n1 - n2;
                }
                else if (operacao == "*")
                {
                    resultado = n1 * n2;
                }
                else if (operacao == "/")
                {
                    resultado = n1 / n2;
                }
            }
            catch
            {
            }
            //GRAVAR RESULTADSO

            CalculadoraAPI.Models.UltimosCalculo entidade = new Models.UltimosCalculo();
            entidade.Entrada1 = dto.Entrada1;
            entidade.Entrada2 = dto.Entrada2;
            entidade.Operacao = dto.Operacao;
            entidade.Resultado = resultado;

            using (CalculadoraAPI.Models.leonecosta11Entities contexto = new Models.leonecosta11Entities())
            {
                contexto.UltimosCalculos.Add(entidade);
                contexto.SaveChanges();
            }
            return resultado;
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        } 
        public List<CalculadoraAPI.Domain.DTO.CalculatorOutputDTO> GetUltimosResultaos()
        {
            List<UltimosCalculo> resultDB = new List<UltimosCalculo>();

            #region AQUI DEVERIA CHAMAR REPOSITORIO
            using (CalculadoraAPI.Models.leonecosta11Entities contexto = new Models.leonecosta11Entities())
            {
                resultDB = contexto.UltimosCalculos.OrderByDescending(ent => ent.Id).Take(5).ToList();
            }  
            #endregion
            List<CalculadoraAPI.Domain.DTO.CalculatorOutputDTO> result  = new List<CalculadoraAPI.Domain.DTO.CalculatorOutputDTO>();

            foreach (UltimosCalculo item in resultDB)
            {
                result.Add(new Domain.DTO.CalculatorOutputDTO() { Entrada1 = item.Entrada1, Entrada2 = item.Entrada2, SimboloOperacao = item.Operacao, Resultado = item.Resultado });
            }

            return result;
        }
    }
}