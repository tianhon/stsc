namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user_points")]
    public partial class UserPoint
    {
        public int Id { get; set; }

        public int UserId { get; set; }

        public int Point { get; set; }

        public int ReasonCode { get; set; }

        public DateTime CreatedDate { get; set; }

        public int CreatedById { get; set; }
    }
}
