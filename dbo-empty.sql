/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL MSSQL SERVER
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : .\SQLEXPRESS:1433
 Source Catalog        : PaymentSystem
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 29/04/2020 02:15:40
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE Turkish_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE Turkish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Logs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type IN ('U'))
	DROP TABLE [dbo].[Logs]
GO

CREATE TABLE [dbo].[Logs] (
  [LogId] int  IDENTITY(1,1) NOT NULL,
  [Date] datetime2(7)  NOT NULL,
  [Description] nvarchar(255) COLLATE Turkish_CI_AS  NULL,
  [UserId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Logs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Organizations
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type IN ('U'))
	DROP TABLE [dbo].[Organizations]
GO

CREATE TABLE [dbo].[Organizations] (
  [OrganizationId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(100) COLLATE Turkish_CI_AS  NULL,
  [Phone] nvarchar(50) COLLATE Turkish_CI_AS  NULL,
  [Address] nvarchar(255) COLLATE Turkish_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Organizations] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for PaymentChannel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentChannel]') AND type IN ('U'))
	DROP TABLE [dbo].[PaymentChannel]
GO

CREATE TABLE [dbo].[PaymentChannel] (
  [PaymentChannelId] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(50) COLLATE Turkish_CI_AS  NULL,
  [ApiKey] varchar(255) COLLATE Turkish_CI_AS  NULL,
  [SecretKey] varchar(255) COLLATE Turkish_CI_AS  NULL,
  [BaseUrl] varchar(255) COLLATE Turkish_CI_AS  NULL,
  [CallbackUrl] varchar(255) COLLATE Turkish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[PaymentChannel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Payments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type IN ('U'))
	DROP TABLE [dbo].[Payments]
GO

CREATE TABLE [dbo].[Payments] (
  [PaymentId] int  IDENTITY(1,1) NOT NULL,
  [UserId] int  NOT NULL,
  [Price] decimal(18,2)  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [ExpiryDate] datetime2(7)  NOT NULL,
  [Description] nvarchar(255) COLLATE Turkish_CI_AS  NULL,
  [Status] int  NOT NULL,
  [Visible] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Payments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Transactions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Transactions]') AND type IN ('U'))
	DROP TABLE [dbo].[Transactions]
GO

CREATE TABLE [dbo].[Transactions] (
  [TransactionId] int  IDENTITY(1,1) NOT NULL,
  [Date] datetime2(7)  NOT NULL,
  [Price] decimal(18,2)  NOT NULL,
  [Status] int  NOT NULL,
  [UserId] int  NULL,
  [Token] varchar(255) COLLATE Turkish_CI_AS  NULL,
  [TransactionType] int  NULL,
  [PaymentChannelId] int  NULL
)
GO

ALTER TABLE [dbo].[Transactions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
	DROP TABLE [dbo].[Users]
GO

CREATE TABLE [dbo].[Users] (
  [UserId] int  IDENTITY(1,1) NOT NULL,
  [OrganizationId] int  NOT NULL,
  [UserType] int  NOT NULL,
  [UserName] nvarchar(100) COLLATE Turkish_CI_AS  NULL,
  [Password] nvarchar(100) COLLATE Turkish_CI_AS  NULL,
  [FirstName] nvarchar(50) COLLATE Turkish_CI_AS  NULL,
  [LastName] nvarchar(50) COLLATE Turkish_CI_AS  NULL,
  [Status] int  NOT NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [Token] nvarchar(255) COLLATE Turkish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Logs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Logs]', RESEED, 398)
GO


-- ----------------------------
-- Indexes structure for table Logs
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Logs_UserId]
ON [dbo].[Logs] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Logs
-- ----------------------------
ALTER TABLE [dbo].[Logs] ADD CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED ([LogId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Organizations
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Organizations]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table Organizations
-- ----------------------------
ALTER TABLE [dbo].[Organizations] ADD CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED ([OrganizationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PaymentChannel
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PaymentChannel]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table PaymentChannel
-- ----------------------------
ALTER TABLE [dbo].[PaymentChannel] ADD CONSTRAINT [PK__PaymentC__BEFF4B11BCB7665D] PRIMARY KEY CLUSTERED ([PaymentChannelId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Payments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Payments]', RESEED, 42)
GO


-- ----------------------------
-- Indexes structure for table Payments
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Payments_UserId]
ON [dbo].[Payments] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Payments
-- ----------------------------
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED ([PaymentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Transactions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Transactions]', RESEED, 23)
GO


-- ----------------------------
-- Indexes structure for table Transactions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Transactions_UserId]
ON [dbo].[Transactions] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Transactions
-- ----------------------------
ALTER TABLE [dbo].[Transactions] ADD CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Users
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Users]', RESEED, 31)
GO


-- ----------------------------
-- Indexes structure for table Users
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Users_OrganizationId]
ON [dbo].[Users] (
  [OrganizationId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Logs
-- ----------------------------
ALTER TABLE [dbo].[Logs] ADD CONSTRAINT [FK_Logs_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Payments
-- ----------------------------
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [FK_Payments_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Transactions
-- ----------------------------
ALTER TABLE [dbo].[Transactions] ADD CONSTRAINT [FK_Transactions_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_Organizations_OrganizationId] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organizations] ([OrganizationId]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

