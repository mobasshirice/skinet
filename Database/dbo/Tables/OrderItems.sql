CREATE TABLE [dbo].[OrderItems] (
    [Id]                        INT             IDENTITY (1, 1) NOT NULL,
    [ItemOrdered_ProductItemId] INT             NULL,
    [ItemOrdered_ProductName]   NVARCHAR (MAX)  NULL,
    [ItemOrdered_PictureUrl]    NVARCHAR (MAX)  NULL,
    [Price]                     DECIMAL (18, 2) NOT NULL,
    [Quantity]                  INT             NOT NULL,
    [OrderId]                   INT             NULL,
    CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId]
    ON [dbo].[OrderItems]([OrderId] ASC);

