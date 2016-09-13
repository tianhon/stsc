namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user_address")]
    public partial class UserAddress
    {
        public int Id { get; set; }

        public int UserId { get; set; }

        [StringLength(100)]
        public string Address { get; set; }

        [StringLength(20)]
        public string Province { get; set; }

        [StringLength(20)]
        public string City { get; set; }

        [StringLength(50)]
        public string ConsigneeName { get; set; }

        [StringLength(20)]
        public string ConsigneePhone { get; set; }

        public int IsDefault { get; set; }
    }
}
