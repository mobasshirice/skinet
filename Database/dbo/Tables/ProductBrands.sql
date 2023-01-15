CREATE TABLE [dbo].[ProductBrands] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_ProductBrands] PRIMARY KEY CLUSTERED ([Id] ASC)
);

