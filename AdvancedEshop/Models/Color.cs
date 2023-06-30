using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;

namespace AdvancedEshop.Models
{
    public class Color
    {
        [Key]
        public int ColorId { get; set; }
        [StringLength(30)]

        public string? ColorName { get; set; }
    }
}
