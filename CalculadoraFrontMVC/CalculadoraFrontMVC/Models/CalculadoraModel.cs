using System.ComponentModel.DataAnnotations;

namespace CalculadoraFrontMVC.Models
{
    public abstract class  CalculadoraModel
    {
        [Required]
        [DataType(DataType.Currency)]
        [Display(Name = "Entrada1")]
        public double Entrada1 { get; set; }

        [Required]
        [DataType(DataType.Currency)]
        [Display(Name = "Entrada2")]
        public double Entrada2 { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Operacao")]
        public string Operacao { get; set; }
    }
}