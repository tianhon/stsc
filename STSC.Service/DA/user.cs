//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace STSC.Service.DA
{
    using System;
    using System.Collections.Generic;
    
    public partial class user
    {
        public int Id { get; set; }
        public string OpenID { get; set; }
        public string Name { get; set; }
        public string AvatarImg { get; set; }
        public string Phone { get; set; }
        public Nullable<bool> Sex { get; set; }
        public Nullable<System.DateTime> RegTime { get; set; }
        public Nullable<int> TotalPoints { get; set; }
        public Nullable<System.DateTime> LastCheckInDate { get; set; }
        public Nullable<int> ContinuousCheckInDays { get; set; }
        public bool Status { get; set; }
    }
}
