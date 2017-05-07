using CalculadoraAPI.Domain.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CalculadoraAPI.Domain.Interfaces.Services
{
    public interface ICalculadoraService : IDisposable
    {
        Double Calcular(CalculatorInputDTO dto);
         
       List<CalculatorOutputDTO> GetUltimosResultaos();
    }
}