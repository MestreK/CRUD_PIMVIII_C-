using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication5.Models
{
    public class Lancamento
    {
        public int codigo { get; set; }
        public string descricao { get; set; }
        public string dataCadastro { get; set; }
        public string dataLimite { get; set; }
    }
}