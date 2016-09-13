namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("event_user")]
    public partial class EventUser
    {
        public int Id { get; set; }

        public int EventId { get; set; }

        public int UserId { get; set; }

        [StringLength(100)]
        public string UserName { get; set; }

        [StringLength(100)]
        public string AvatarImg { get; set; }
    }
}
