using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CalculadoraAPI.Domain.DTO
{
    public class CalculatorInputDTO : CalculatorDTO
    { 
        public String Operacao { get; set; }
    }
}