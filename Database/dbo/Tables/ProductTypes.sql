﻿CREATE TABLE [dbo].[ProductTypes] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

