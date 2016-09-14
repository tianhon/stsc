namespace STSC.Service.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class STSCContext : DbContext
    {
        public STSCContext()
            : base("name=STSCContext")
        {
        }

        public virtual DbSet<Article> Articles { get; set; }
        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<Classification> Classifications { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<EventUser> EventUsers { get; set; }
        public virtual DbSet<Goods> Goods { get; set; }
        public virtual DbSet<GoodsComment> GoodsComments { get; set; }
        public virtual DbSet<GoodsImg> GoodsImgs { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Recommendation> Recommendations { get; set; }
        public virtual DbSet<Store> Stores { get; set; }
        public virtual DbSet<StoreUser> StoreUsers { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserAddress> UserAddresses { get; set; }
        public virtual DbSet<UserFavorite> UserFavorites { get; set; }
        public virtual DbSet<UserPoint> UserPoints { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Article>()
                .Property(e => e.Author)
                .IsUnicode(false);

            modelBuilder.Entity<Article>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<Article>()
                .Property(e => e.URL)
                .IsUnicode(false);

            modelBuilder.Entity<Article>()
                .Property(e => e.Content)
                .IsUnicode(false);

            modelBuilder.Entity<Cart>()
                .Property(e => e.GoodsName)
                .IsUnicode(false);

            modelBuilder.Entity<Cart>()
                .Property(e => e.GoodsShortDesc)
                .IsUnicode(false);

            modelBuilder.Entity<Cart>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Classification>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Classification>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Classification>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Classification>()
                .Property(e => e.Path)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.BannerImg)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.HomeUrl)
                .IsUnicode(false);

            modelBuilder.Entity<Event>()
                .Property(e => e.Param)
                .IsUnicode(false);

            modelBuilder.Entity<EventUser>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<EventUser>()
                .Property(e => e.AvatarImg)
                .IsUnicode(false);

            modelBuilder.Entity<Goods>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Goods>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Goods>()
                .Property(e => e.ShortDescription)
                .IsUnicode(false);

            modelBuilder.Entity<Goods>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<GoodsComment>()
                .Property(e => e.Author)
                .IsUnicode(false);

            modelBuilder.Entity<GoodsComment>()
                .Property(e => e.Content)
                .IsUnicode(false);

            modelBuilder.Entity<GoodsImg>()
                .Property(e => e.ImgPath)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.OrderNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.ExpressNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.Remarks)
                .IsUnicode(false);

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.GoodsName)
                .IsUnicode(false);

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.GoodsShortDesc)
                .IsUnicode(false);

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Recommendation>()
                .Property(e => e.BannerImg)
                .IsUnicode(false);

            modelBuilder.Entity<Recommendation>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Recommendation>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Recommendation>()
                .Property(e => e.URL)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.BannerImg)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.HomeUrl)
                .IsUnicode(false);

            modelBuilder.Entity<Store>()
                .Property(e => e.Param)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.OpenID)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.AvatarImg)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<UserAddress>()
                .Property(e => e.Address)
                .IsUnicode(false);

            modelBuilder.Entity<UserAddress>()
                .Property(e => e.Province)
                .IsUnicode(false);

            modelBuilder.Entity<UserAddress>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<UserAddress>()
                .Property(e => e.ConsigneeName)
                .IsUnicode(false);

            modelBuilder.Entity<UserAddress>()
                .Property(e => e.ConsigneePhone)
                .IsUnicode(false);

            modelBuilder.Entity<UserFavorite>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<UserFavorite>()
                .Property(e => e.ThumbImg)
                .IsUnicode(false);

            modelBuilder.Entity<UserFavorite>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<UserFavorite>()
                .Property(e => e.Url)
                .IsUnicode(false);
        }
    }
}
