namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("article")]
    public partial class Article
    {
        [Column(TypeName = "uint")]
        public long Id { get; set; }

        [StringLength(50)]
        public string Author { get; set; }

        [StringLength(200)]
        public string Title { get; set; }

        [StringLength(100)]
        public string URL { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string Content { get; set; }

        [Column(TypeName = "date")]
        public DateTime? CreateDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ExpiredDate { get; set; }
    }
}
