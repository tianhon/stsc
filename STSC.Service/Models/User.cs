namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user")]
    public partial class User
    {
        public int Id { get; set; }

        [StringLength(100)]
        public string OpenID { get; set; }

        [StringLength(100)]
        public string Name { get; set; }

        [StringLength(100)]
        public string AvatarImg { get; set; }

        [StringLength(50)]
        public string Phone { get; set; }

        public bool? Sex { get; set; }

        public DateTime? RegTime { get; set; }

        public int? TotalPoints { get; set; }

        public DateTime? LastCheckInDate { get; set; }

        public int? ContinuousCheckInDays { get; set; }

        public bool Status { get; set; }
    }
}
