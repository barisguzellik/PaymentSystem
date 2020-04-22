using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {
        }

        public DbSet<Organization> Organizations { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Payment> Payments { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<Log> Logs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //ORGANIZATON>USERS
            modelBuilder.Entity<User>()
                .HasOne<Organization>(o => o.Organization)
                .WithMany(u => u.Users)
                .HasForeignKey(u => u.OrganizationId);

            //USER>PAYMENTS
            modelBuilder.Entity<Payment>()
                .HasOne<User>(u => u.User)
                .WithMany(p => p.Payments)
                .HasForeignKey(p => p.UserId);

            //USER>TRANSACTIONS
            modelBuilder.Entity<Transaction>()
                .HasOne<User>(u => u.User)
                .WithMany(t => t.Transactions)
                .HasForeignKey(p => p.UserId);

            //USER>LOGS
            modelBuilder.Entity<Log>()
               .HasOne<User>(u => u.User)
               .WithMany(l => l.Logs)
               .HasForeignKey(p => p.UserId);
           
        }
    }
}
