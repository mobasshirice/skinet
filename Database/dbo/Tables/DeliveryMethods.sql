CREATE TABLE [dbo].[DeliveryMethods] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [ShortName]    NVARCHAR (MAX)  NULL,
    [DeliveryTime] NVARCHAR (MAX)  NULL,
    [Description]  NVARCHAR (MAX)  NULL,
    [Price]        DECIMAL (18, 2) NOT NULL,
    CONSTRAINT [PK_DeliveryMethods] PRIMARY KEY CLUSTERED ([Id] ASC)
);

