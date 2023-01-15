CREATE TABLE [dbo].[Products] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (100)  NOT NULL,
    [Description]    NVARCHAR (MAX)  NOT NULL,
    [Price]          DECIMAL (18, 2) NOT NULL,
    [PictureUrl]     NVARCHAR (MAX)  NOT NULL,
    [ProductTypeId]  INT             NOT NULL,
    [ProductBrandId] INT             NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Products_ProductBrands_ProductBrandId] FOREIGN KEY ([ProductBrandId]) REFERENCES [dbo].[ProductBrands] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Products_ProductTypes_ProductTypeId] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductTypes] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Products_ProductBrandId]
    ON [dbo].[Products]([ProductBrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Products_ProductTypeId]
    ON [dbo].[Products]([ProductTypeId] ASC);

