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

 Date: 29/04/2020 01:50:15
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
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200416111356_init', N'3.1.3')
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
-- Records of Logs
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Logs] ON
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'4', N'2020-04-22 16:52:45.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'5', N'2020-04-22 16:52:45.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'6', N'2020-04-22 16:53:02.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'7', N'2020-04-22 16:53:15.0000000', N'Yev Tasarım isimli şirket silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'8', N'2020-04-22 16:53:15.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'9', N'2020-04-22 16:53:33.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'10', N'2020-04-22 16:54:24.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'11', N'2020-04-22 16:54:28.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'12', N'2020-04-22 16:54:38.0000000', N'Yunus Emre Vergül isimli üye silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'13', N'2020-04-22 16:54:38.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'14', N'2020-04-22 16:54:48.0000000', N'Barış Güzellik isimli üye silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'15', N'2020-04-22 16:54:48.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'16', N'2020-04-22 16:55:21.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'17', N'2020-04-22 16:55:28.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'18', N'2020-04-22 16:55:32.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'19', N'2020-04-22 16:55:34.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'20', N'2020-04-22 16:56:01.0000000', N'Yunus Emre Vergül isimli üye eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'21', N'2020-04-22 16:56:10.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'22', N'2020-04-22 16:57:30.0000000', N'30 numaralı kullanıcı için 650,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'23', N'2020-04-22 16:57:53.0000000', N'30 numaralı kullanıcı için 750,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'24', N'2020-04-22 16:58:06.0000000', N'30 numaralı kullanıcı için 750,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'25', N'2020-04-22 16:58:26.0000000', N'30 numaralı kullanıcı için 1.000,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'26', N'2020-04-22 16:58:43.0000000', N'30 numaralı kullanıcı için 1.500,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'27', N'2020-04-22 16:58:59.0000000', N'30 numaralı kullanıcı için 1.000,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'28', N'2020-04-22 16:59:17.0000000', N'30 numaralı kullanıcı için 750,00 tutarında alacak eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'29', N'2020-04-22 16:59:25.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'30', N'2020-04-22 16:59:56.0000000', N'30 numaralı kullanıcı için 1.000,00 tutarında tahsilat eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'31', N'2020-04-22 16:59:59.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'32', N'2020-04-22 17:00:03.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'33', N'2020-04-22 17:01:53.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'34', N'2020-04-22 17:03:07.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'35', N'2020-04-22 17:03:51.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'36', N'2020-04-22 17:03:58.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'37', N'2020-04-22 17:04:12.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'38', N'2020-04-22 17:04:53.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'39', N'2020-04-22 17:05:08.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'40', N'2020-04-22 17:07:59.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'41', N'2020-04-22 17:08:04.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'42', N'2020-04-22 17:08:33.0000000', N'30 numaralı kullanıcı için 1.250,00 tutarında tahsilat eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'43', N'2020-04-22 17:08:43.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'44', N'2020-04-22 17:08:49.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'45', N'2020-04-22 17:08:53.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'46', N'2020-04-22 17:12:28.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'47', N'2020-04-22 17:12:43.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'48', N'2020-04-22 17:12:45.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'49', N'2020-04-22 17:12:48.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'50', N'2020-04-22 17:13:18.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'51', N'2020-04-22 17:13:33.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'52', N'2020-04-22 17:13:37.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'53', N'2020-04-22 17:13:45.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'54', N'2020-04-22 17:14:48.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'55', N'2020-04-22 17:15:32.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'56', N'2020-04-22 17:15:38.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'57', N'2020-04-22 17:31:26.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'58', N'2020-04-22 17:58:31.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'59', N'2020-04-22 17:58:50.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'60', N'2020-04-22 17:58:53.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'61', N'2020-04-22 17:59:24.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'62', N'2020-04-22 18:54:44.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'63', N'2020-04-22 18:54:44.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'64', N'2020-04-22 19:01:01.0000000', N'30 numaralı kullanıcı için 10,00 tutarında tahsilat eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'65', N'2020-04-22 23:18:58.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'66', N'2020-04-22 23:18:58.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'67', N'2020-04-22 23:22:36.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'68', N'2020-04-22 23:25:54.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'69', N'2020-04-23 00:03:31.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'70', N'2020-04-23 00:03:48.0000000', N'8 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'71', N'2020-04-23 00:03:48.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'72', N'2020-04-23 01:19:57.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'73', N'2020-04-23 01:19:57.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'74', N'2020-04-23 02:05:10.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'75', N'2020-04-23 02:05:13.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'76', N'2020-04-23 15:04:55.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'77', N'2020-04-23 15:04:55.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'78', N'2020-04-23 15:36:14.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'79', N'2020-04-23 15:36:14.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'80', N'2020-04-23 15:36:21.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'81', N'2020-04-23 15:36:44.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'82', N'2020-04-23 15:53:26.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'83', N'2020-04-23 15:54:21.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'84', N'2020-04-23 15:55:02.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'85', N'2020-04-23 15:55:02.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'86', N'2020-04-23 16:48:49.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'87', N'2020-04-23 16:48:49.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'88', N'2020-04-23 16:51:22.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'89', N'2020-04-23 16:51:22.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'90', N'2020-04-23 16:55:17.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'91', N'2020-04-23 16:55:56.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'92', N'2020-04-23 16:56:24.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'93', N'2020-04-23 16:56:44.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'94', N'2020-04-23 16:57:40.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'95', N'2020-04-23 16:57:40.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'96', N'2020-04-23 18:40:41.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'97', N'2020-04-23 18:40:41.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'98', N'2020-04-23 18:45:04.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'99', N'2020-04-23 18:45:24.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'100', N'2020-04-23 18:45:39.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'101', N'2020-04-23 18:45:49.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'102', N'2020-04-23 18:45:56.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'103', N'2020-04-23 18:45:58.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'104', N'2020-04-23 18:46:15.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'105', N'2020-04-23 18:49:04.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'106', N'2020-04-23 18:49:11.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'107', N'2020-04-23 18:52:07.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'108', N'2020-04-23 18:52:10.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'109', N'2020-04-23 18:52:13.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'110', N'2020-04-23 18:52:16.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'111', N'2020-04-23 18:52:18.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'112', N'2020-04-23 20:19:54.0000000', N'30 numaralı kullanıcı için 100,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'113', N'2020-04-23 20:20:57.0000000', N'12051307 numaralı ve 100.00000000 tutarında tahsilat başarısız oldu.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'114', N'2020-04-23 20:23:31.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'115', N'2020-04-23 20:23:36.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'116', N'2020-04-23 20:24:03.0000000', N'30 numaralı kullanıcı için 100,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'117', N'2020-04-23 20:24:16.0000000', N'12051308 numaralı ve 100.00000000 tutarında tahsilat başarısız oldu.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'118', N'2020-04-23 20:25:35.0000000', N'30 numaralı kullanıcı için 100,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'119', N'2020-04-23 20:25:47.0000000', N'12051313 numaralı ve 100.00000000 tutarında tahsilat onaylandı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'120', N'2020-04-23 20:25:53.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'121', N'2020-04-23 21:21:35.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'122', N'2020-04-23 21:21:35.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'123', N'2020-04-23 21:50:15.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'124', N'2020-04-23 21:50:22.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'125', N'2020-04-23 21:50:26.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'126', N'2020-04-23 21:50:29.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'127', N'2020-04-23 21:52:13.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'128', N'2020-04-23 21:53:22.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'129', N'2020-04-23 21:53:30.0000000', N'9 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'130', N'2020-04-23 21:53:30.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'131', N'2020-04-23 21:53:35.0000000', N'10 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'132', N'2020-04-23 21:53:35.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'133', N'2020-04-23 21:53:39.0000000', N'11 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'134', N'2020-04-23 21:53:39.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'135', N'2020-04-23 21:53:45.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'136', N'2020-04-23 21:53:51.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'137', N'2020-04-23 21:54:18.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'138', N'2020-04-23 21:56:02.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'139', N'2020-04-23 21:56:13.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'140', N'2020-04-23 21:56:15.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'141', N'2020-04-23 21:56:19.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'142', N'2020-04-23 21:56:34.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'143', N'2020-04-23 21:56:39.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'144', N'2020-04-23 21:56:42.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'145', N'2020-04-23 21:57:00.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'146', N'2020-04-23 21:58:43.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'147', N'2020-04-23 22:04:53.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'148', N'2020-04-23 22:05:16.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'149', N'2020-04-23 22:10:33.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'150', N'2020-04-23 22:10:52.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'151', N'2020-04-23 22:24:30.0000000', N'30 numaralı kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'152', N'2020-04-23 22:24:50.0000000', N'12051435 numaralı ve 1.00000000 tutarında tahsilat onaylandı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'153', N'2020-04-23 22:24:59.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'154', N'2020-04-23 22:25:13.0000000', N'12 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'155', N'2020-04-23 22:25:13.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'156', N'2020-04-23 22:27:03.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'157', N'2020-04-23 22:28:32.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'158', N'2020-04-23 22:29:13.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'159', N'2020-04-23 22:29:38.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'160', N'2020-04-23 22:29:52.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'161', N'2020-04-23 22:30:01.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'162', N'2020-04-23 22:30:07.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'163', N'2020-04-23 22:30:10.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'164', N'2020-04-23 22:30:19.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'165', N'2020-04-23 22:31:19.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'166', N'2020-04-23 22:34:12.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'167', N'2020-04-23 22:34:39.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'168', N'2020-04-23 22:35:20.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'169', N'2020-04-23 23:05:10.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'170', N'2020-04-23 23:05:25.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'171', N'2020-04-23 23:05:51.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'172', N'2020-04-23 23:06:09.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'173', N'2020-04-23 23:06:18.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'174', N'2020-04-23 23:10:34.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'175', N'2020-04-23 23:10:52.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'176', N'2020-04-23 23:10:52.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'177', N'2020-04-23 23:24:24.0000000', N'Barış Güzellik isimli üye güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'178', N'2020-04-23 23:24:58.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'179', N'2020-04-23 23:25:41.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'180', N'2020-04-23 23:26:05.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'181', N'2020-04-23 23:26:29.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'182', N'2020-04-23 23:26:47.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'183', N'2020-04-23 23:27:16.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'184', N'2020-04-23 23:28:10.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'185', N'2020-04-23 23:28:15.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'186', N'2020-04-23 23:32:04.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'187', N'2020-04-23 23:42:05.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'188', N'2020-04-23 23:43:27.0000000', N'Yunus Emre Vergül isimli üyenin parolası güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'189', N'2020-04-23 23:44:41.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'190', N'2020-04-23 23:44:49.0000000', N'Yunus Emre Vergül isimli üyenin parolası güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'191', N'2020-04-23 23:44:57.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'192', N'2020-04-23 23:45:06.0000000', N'Yunus Emre Vergül isimli üye güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'193', N'2020-04-23 23:46:34.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'194', N'2020-04-23 23:46:41.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'195', N'2020-04-23 23:46:44.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'196', N'2020-04-23 23:46:55.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'197', N'2020-04-23 23:46:57.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'198', N'2020-04-23 23:47:08.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'199', N'2020-04-23 23:47:12.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'200', N'2020-04-23 23:47:26.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'201', N'2020-04-23 23:47:36.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'202', N'2020-04-23 23:47:46.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'203', N'2020-04-23 23:47:50.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'204', N'2020-04-23 23:48:01.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'205', N'2020-04-23 23:48:29.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'206', N'2020-04-25 17:06:32.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'207', N'2020-04-25 17:06:32.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'208', N'2020-04-25 17:11:10.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'209', N'2020-04-25 17:12:10.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'210', N'2020-04-25 17:13:20.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'211', N'2020-04-25 17:18:21.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'212', N'2020-04-25 17:21:48.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'213', N'2020-04-25 17:21:50.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'214', N'2020-04-25 17:21:58.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'215', N'2020-04-25 17:22:13.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'216', N'2020-04-25 17:25:46.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'217', N'2020-04-25 17:26:22.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'218', N'2020-04-25 17:26:48.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'219', N'2020-04-25 17:26:52.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'220', N'2020-04-25 17:26:57.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'221', N'2020-04-25 17:27:00.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'222', N'2020-04-25 17:27:03.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'223', N'2020-04-25 17:27:11.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'224', N'2020-04-25 17:27:14.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'225', N'2020-04-25 17:27:22.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'226', N'2020-04-25 17:31:28.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'227', N'2020-04-25 17:31:32.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'228', N'2020-04-25 17:36:01.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'229', N'2020-04-25 17:36:21.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'230', N'2020-04-25 17:36:55.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'231', N'2020-04-25 17:37:00.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'232', N'2020-04-25 17:38:01.0000000', N'30 numaralı kullanıcı için 10,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'233', N'2020-04-25 17:39:05.0000000', N'12054309 numaralı ve 10.00000000 tutarında tahsilat onaylandı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'234', N'2020-04-25 17:39:11.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'235', N'2020-04-25 17:39:23.0000000', N'30 numaralı kullanıcı için 10,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'236', N'2020-04-25 17:40:14.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'237', N'2020-04-25 17:40:28.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'238', N'2020-04-25 17:40:35.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'239', N'2020-04-25 17:40:45.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'240', N'2020-04-25 17:41:09.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'241', N'2020-04-25 17:41:28.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'242', N'2020-04-25 17:42:41.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'243', N'2020-04-25 17:43:55.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'244', N'2020-04-25 17:44:04.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'245', N'2020-04-25 17:44:11.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'246', N'2020-04-25 17:44:26.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'247', N'2020-04-25 17:45:07.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'248', N'2020-04-25 17:46:11.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'249', N'2020-04-28 15:04:38.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'250', N'2020-04-28 15:04:38.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'251', N'2020-04-28 15:05:02.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'252', N'2020-04-28 15:05:09.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'253', N'2020-04-28 15:05:14.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'254', N'2020-04-28 15:17:07.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'255', N'2020-04-28 15:17:35.0000000', N'14 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'256', N'2020-04-28 15:17:35.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'257', N'2020-04-28 15:17:42.0000000', N'13 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'258', N'2020-04-28 15:17:42.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'259', N'2020-04-28 15:17:52.0000000', N'30 numaralı kullanıcı için 10,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'260', N'2020-04-28 15:18:03.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'261', N'2020-04-28 15:18:34.0000000', N'15 numaralı tahsilat güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'262', N'2020-04-28 15:18:37.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'263', N'2020-04-28 15:20:30.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'264', N'2020-04-28 15:20:35.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'265', N'2020-04-28 15:20:57.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'266', N'2020-04-28 15:20:59.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'267', N'2020-04-28 15:31:54.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'268', N'2020-04-28 15:31:59.0000000', N'15 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'269', N'2020-04-28 15:31:59.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'270', N'2020-04-28 15:32:04.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'271', N'2020-04-28 15:32:31.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'272', N'2020-04-28 15:32:48.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'273', N'2020-04-28 15:33:04.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'274', N'2020-04-28 15:33:46.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'275', N'2020-04-28 15:36:53.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'276', N'2020-04-28 15:37:05.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'277', N'2020-04-28 15:37:31.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'278', N'2020-04-28 15:37:36.0000000', N'19 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'279', N'2020-04-28 15:37:36.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'280', N'2020-04-28 15:37:42.0000000', N'18 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'281', N'2020-04-28 15:37:42.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'282', N'2020-04-28 15:37:48.0000000', N'17 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'283', N'2020-04-28 15:37:48.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'284', N'2020-04-28 15:37:52.0000000', N'16 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'285', N'2020-04-28 15:37:52.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'286', N'2020-04-28 15:38:16.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'287', N'2020-04-28 15:44:19.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'288', N'2020-04-28 15:47:36.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'289', N'2020-04-28 15:47:38.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'290', N'2020-04-28 15:47:39.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'291', N'2020-04-28 15:47:57.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'292', N'2020-04-28 15:49:26.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'293', N'2020-04-28 15:49:40.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'294', N'2020-04-28 15:51:04.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'295', N'2020-04-28 15:51:42.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'296', N'2020-04-28 15:52:28.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'297', N'2020-04-28 15:54:04.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'298', N'2020-04-28 15:55:26.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'299', N'2020-04-28 15:58:02.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'300', N'2020-04-28 15:58:06.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'301', N'2020-04-28 15:58:21.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'302', N'2020-04-28 15:58:29.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'303', N'2020-04-28 15:58:31.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'304', N'2020-04-28 15:58:35.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'305', N'2020-04-28 15:58:39.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'306', N'2020-04-28 15:58:41.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'307', N'2020-04-28 15:58:46.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'308', N'2020-04-28 15:58:53.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'309', N'2020-04-28 15:59:28.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'310', N'2020-04-28 15:59:46.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'311', N'2020-04-28 15:59:48.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'312', N'2020-04-28 16:00:52.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'313', N'2020-04-28 16:00:57.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'314', N'2020-04-28 16:01:11.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'315', N'2020-04-28 16:01:17.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'316', N'2020-04-28 16:01:20.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'317', N'2020-04-28 16:02:24.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'318', N'2020-04-28 16:12:44.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'319', N'2020-04-28 16:27:10.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'320', N'2020-04-28 16:27:16.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'321', N'2020-04-28 16:27:29.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'322', N'2020-04-28 16:27:36.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'323', N'2020-04-28 16:28:19.0000000', N'İyzico Sandbox isimli ödeme kanalı eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'324', N'2020-04-28 16:28:22.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'325', N'2020-04-28 16:29:55.0000000', N'İyzico Sandbox isimli ödeme kanalı güncellendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'326', N'2020-04-28 16:29:59.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'327', N'2020-04-28 16:30:09.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'328', N'2020-04-28 16:30:52.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'329', N'2020-04-28 16:52:12.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'330', N'2020-04-28 16:52:16.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'331', N'2020-04-28 16:56:47.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'332', N'2020-04-28 16:56:47.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'333', N'2020-04-28 17:17:52.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'334', N'2020-04-28 17:18:00.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'335', N'2020-04-28 17:18:20.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'336', N'2020-04-28 17:19:23.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'337', N'2020-04-28 17:19:36.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'338', N'2020-04-28 17:22:11.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'339', N'2020-04-28 17:22:50.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'340', N'2020-04-28 17:23:06.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'341', N'2020-04-28 17:24:02.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'342', N'2020-04-28 17:24:16.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'343', N'2020-04-28 17:24:47.0000000', N'Yunus Emre Vergül isimli kullanıcı için 1,00 tutarında tahsilat emri başlatıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'344', N'2020-04-28 17:24:59.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'345', N'2020-04-28 17:27:52.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'346', N'2020-04-28 17:27:56.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'347', N'2020-04-28 17:28:02.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'348', N'2020-04-28 17:28:31.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'349', N'2020-04-28 17:28:34.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'350', N'2020-04-28 17:28:41.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'351', N'2020-04-28 17:36:22.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'352', N'2020-04-28 17:36:26.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'353', N'2020-04-28 17:37:30.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'354', N'2020-04-28 17:37:43.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'355', N'2020-04-28 17:37:47.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'356', N'2020-04-28 17:38:03.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'357', N'2020-04-28 17:38:07.0000000', N'Şirketler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'358', N'2020-04-28 17:38:10.0000000', N'Ödeme kanalları listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'359', N'2020-04-28 17:38:17.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'360', N'2020-04-29 00:36:52.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'361', N'2020-04-29 00:36:52.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'362', N'2020-04-29 01:28:03.0000000', N'Giriş yapıldı.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'363', N'2020-04-29 01:28:40.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'364', N'2020-04-29 01:29:12.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'365', N'2020-04-29 01:29:33.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'366', N'2020-04-29 01:30:41.0000000', N'Borç listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'367', N'2020-04-29 01:30:57.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'368', N'2020-04-29 01:33:12.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'369', N'2020-04-29 01:40:39.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'370', N'2020-04-29 01:41:35.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'371', N'2020-04-29 01:42:03.0000000', N'Borç listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'372', N'2020-04-29 01:42:11.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'373', N'2020-04-29 01:42:27.0000000', N'Yunus Emre Vergül isimli kullanıcı 10,00 tutarında ödeme ekledi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'374', N'2020-04-29 01:44:26.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'375', N'2020-04-29 01:44:50.0000000', N'Yunus Emre Vergül isimli kullanıcı 100,00 tutarında ödeme ekledi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'376', N'2020-04-29 01:45:04.0000000', N'12060481 numaralı ve 100.00000000 tutarında ödeme onaylandı.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'377', N'2020-04-29 01:45:08.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'378', N'2020-04-29 01:46:08.0000000', N'Ödeme listesi görüntülendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'379', N'2020-04-29 01:46:19.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'380', N'2020-04-29 01:46:37.0000000', N'Gösterge listelendi.', N'30')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'381', N'2020-04-29 01:47:26.0000000', N'Giriş yapıldı.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'382', N'2020-04-29 01:47:26.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'383', N'2020-04-29 01:47:54.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'384', N'2020-04-29 01:48:02.0000000', N'Alacak listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'385', N'2020-04-29 01:48:05.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'386', N'2020-04-29 01:48:29.0000000', N'Barış Güzellik isimli üye eklendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'387', N'2020-04-29 01:48:32.0000000', N'Üyeler listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'388', N'2020-04-29 01:48:40.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'389', N'2020-04-29 01:48:49.0000000', N'20 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'390', N'2020-04-29 01:48:49.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'391', N'2020-04-29 01:48:54.0000000', N'21 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'392', N'2020-04-29 01:48:54.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'393', N'2020-04-29 01:48:58.0000000', N'22 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'394', N'2020-04-29 01:48:58.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'395', N'2020-04-29 01:49:01.0000000', N'23 numaralı tahsilat silindi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'396', N'2020-04-29 01:49:01.0000000', N'Tahsilat listesi görüntülendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'397', N'2020-04-29 01:49:18.0000000', N'Gösterge listelendi.', N'14')
GO

INSERT INTO [dbo].[Logs] ([LogId], [Date], [Description], [UserId]) VALUES (N'398', N'2020-04-29 01:49:55.0000000', N'Gösterge listelendi.', N'14')
GO

SET IDENTITY_INSERT [dbo].[Logs] OFF
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
-- Records of Organizations
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Organizations] ON
GO

INSERT INTO [dbo].[Organizations] ([OrganizationId], [Name], [Phone], [Address], [Status]) VALUES (N'10', N'Çark Ajans', N'48747777', N'Adapazarı / Sakarya', N'1')
GO

SET IDENTITY_INSERT [dbo].[Organizations] OFF
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
-- Records of PaymentChannel
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PaymentChannel] ON
GO

INSERT INTO [dbo].[PaymentChannel] ([PaymentChannelId], [Name], [ApiKey], [SecretKey], [BaseUrl], [CallbackUrl]) VALUES (N'1', N'İyzico', N'sandbox-6C4FDBCcelqhyHqxttnZzkaCbU97pWkU', N'sandbox-sZ5kCxHDR5nWcttdQC04PNmGhVj3VZoV', N'https://sandbox-api.iyzipay.com', N'http://localhost:5000/Transaction/ThreeDPay')
GO

INSERT INTO [dbo].[PaymentChannel] ([PaymentChannelId], [Name], [ApiKey], [SecretKey], [BaseUrl], [CallbackUrl]) VALUES (N'2', N'İyzico Sandbox', N'sandbox-6C4FDBCcelqhyHqxttnZzkaCbU97pWkU', N'sandbox-sZ5kCxHDR5nWcttdQC04PNmGhVj3VZoV', N'https://sandbox-api.iyzipay.com', N'http://localhost:5000/Transaction/ThreeDPay')
GO

SET IDENTITY_INSERT [dbo].[PaymentChannel] OFF
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
-- Records of Payments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Payments] ON
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'36', N'30', N'650.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'Elden borç', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'37', N'30', N'750.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'Pikder', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'38', N'30', N'750.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'ReklamoTv Blog', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'39', N'30', N'1000.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'Avcı Grup', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'40', N'30', N'1500.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'MG Beyond', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'41', N'30', N'1000.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'Kılınçlar', N'0', N'1')
GO

INSERT INTO [dbo].[Payments] ([PaymentId], [UserId], [Price], [CreatedDate], [ExpiryDate], [Description], [Status], [Visible]) VALUES (N'42', N'30', N'750.00', N'2020-04-22 00:00:00.0000000', N'2020-06-30 00:00:00.0000000', N'Başkanat İnşaat', N'0', N'1')
GO

SET IDENTITY_INSERT [dbo].[Payments] OFF
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
-- Records of Transactions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Transactions] ON
GO

INSERT INTO [dbo].[Transactions] ([TransactionId], [Date], [Price], [Status], [UserId], [Token], [TransactionType], [PaymentChannelId]) VALUES (N'6', N'2020-04-22 00:00:00.0000000', N'1000.00', N'1', N'30', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[Transactions] ([TransactionId], [Date], [Price], [Status], [UserId], [Token], [TransactionType], [PaymentChannelId]) VALUES (N'7', N'2020-01-01 00:00:00.0000000', N'1250.00', N'1', N'30', NULL, N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[Transactions] OFF
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
-- Records of Users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Users] ON
GO

INSERT INTO [dbo].[Users] ([UserId], [OrganizationId], [UserType], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedDate], [Token]) VALUES (N'14', N'10', N'1', N'baris', N'e10adc3949ba59abbe56e057f20f883e', N'Barış', N'Güzellik', N'1', N'2020-04-17 21:06:43.7733333', N'D1A7CA5F-3AC4-47FB-AB8F-266393DE6533')
GO

INSERT INTO [dbo].[Users] ([UserId], [OrganizationId], [UserType], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedDate], [Token]) VALUES (N'30', N'10', N'2', N'yunusemre', N'e10adc3949ba59abbe56e057f20f883e', N'Yunus Emre', N'Vergül', N'1', N'2020-04-22 16:56:01.3666667', N'B5D31B9D-E2E5-430C-8E26-68A562372A49')
GO

INSERT INTO [dbo].[Users] ([UserId], [OrganizationId], [UserType], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedDate], [Token]) VALUES (N'31', N'10', N'2', N'barisguzellik', N'e10adc3949ba59abbe56e057f20f883e', N'Barış', N'Güzellik', N'1', N'2020-04-29 01:48:29.3300000', N'AE19B833-2079-4B24-B374-CC684C3E7406')
GO

SET IDENTITY_INSERT [dbo].[Users] OFF
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

