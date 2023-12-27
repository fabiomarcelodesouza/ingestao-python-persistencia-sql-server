USE TestShopee
GO

IF OBJECT_ID('Orders', 'U') IS NOT NULL
BEGIN
	DROP TABLE Orders
END

CREATE TABLE [Orders](
	[order_id] [int] NOT NULL, --PRIMARY KEY,
	[delivery_date] [datetime] NOT NULL,
	[shop_name] [varchar](50) NOT NULL,
	[amount] [float] NOT NULL
)
GO


