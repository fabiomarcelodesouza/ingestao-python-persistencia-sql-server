USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [test_shopee]    Script Date: 27/12/2023 14:30:24 ******/
CREATE LOGIN [test_shopee] WITH PASSWORD=N'123456', DEFAULT_DATABASE=[TestShopee], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [test_shopee] ENABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [test_shopee]
GO

