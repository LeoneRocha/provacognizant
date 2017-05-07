using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace CalculadoraAPI.Domain.DTO
{
    public class CalculatorOutputDTO : CalculatorDTO
    {
        [JsonIgnore]
        [IgnoreDataMember]
        internal String SimboloOperacao { get; set; }

        public string Operacao {
            get
            {
                String resultado = "";

                if (this.SimboloOperacao == "+")
                {
                    resultado = "Soma";
                }
                else if (this.SimboloOperacao == "-")
                {
                    resultado = "Subtração";
                }
                else if (this.SimboloOperacao == "*")
                {
                    resultado = "Multiplicação";
                }
                else if (this.SimboloOperacao == "/")
                {
                    resultado = "Divisão";
                }

                return resultado;
            }

        }

        public double Resultado { get; set; }
    }
}