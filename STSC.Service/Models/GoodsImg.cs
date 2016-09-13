namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("goods_img")]
    public partial class GoodsImg
    {
        public int Id { get; set; }

        public int GoodsId { get; set; }

        public bool ImgType { get; set; }

        public int ImgOrder { get; set; }

        [StringLength(100)]
        public string ImgPath { get; set; }
    }
}
