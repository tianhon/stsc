namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("classification")]
    public partial class Classification
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(100)]
        public string ThumbImg { get; set; }

        [StringLength(200)]
        public string Description { get; set; }

        [Required]
        [StringLength(50)]
        public string Path { get; set; }
    }
}
