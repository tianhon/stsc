namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("order")]
    public partial class Order
    {
        public int Id { get; set; }

        public int UserId { get; set; }

        public DateTime OrderTime { get; set; }

        [Required]
        [StringLength(20)]
        public string OrderNumber { get; set; }

        public float TotalPrice { get; set; }

        public int PayPoint { get; set; }

        public float PayAmount { get; set; }

        public bool PaymentType { get; set; }

        public bool ExpressType { get; set; }

        [StringLength(50)]
        public string ExpressNumber { get; set; }

        public float ExpressPrice { get; set; }

        public int? AddressId { get; set; }

        [StringLength(500)]
        public string Remarks { get; set; }

        public bool Status { get; set; }
    }
}
