namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("store_user")]
    public partial class StoreUser
    {
        public int Id { get; set; }

        public int UserId { get; set; }

        public int StoreId { get; set; }

        public sbyte Role { get; set; }
    }
}
