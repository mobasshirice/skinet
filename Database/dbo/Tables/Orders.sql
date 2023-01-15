CREATE TABLE [dbo].[Orders] (
    [Id]                      INT                IDENTITY (1, 1) NOT NULL,
    [BuyerEmail]              NVARCHAR (MAX)     NULL,
    [OrderDate]               DATETIMEOFFSET (7) NOT NULL,
    [ShipToAddress_FirstName] NVARCHAR (MAX)     NULL,
    [ShipToAddress_LastName]  NVARCHAR (MAX)     NULL,
    [ShipToAddress_Street]    NVARCHAR (MAX)     NULL,
    [ShipToAddress_City]      NVARCHAR (MAX)     NULL,
    [ShipToAddress_State]     NVARCHAR (MAX)     NULL,
    [ShipToAddress_ZipCode]   NVARCHAR (MAX)     NULL,
    [DeliveryMethodId]        INT                NULL,
    [Subtotal]                DECIMAL (18, 2)    NOT NULL,
    [Status]                  NVARCHAR (MAX)     NOT NULL,
    [PaymentIntentId]         NVARCHAR (MAX)     NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Orders_DeliveryMethods_DeliveryMethodId] FOREIGN KEY ([DeliveryMethodId]) REFERENCES [dbo].[DeliveryMethods] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Orders_DeliveryMethodId]
    ON [dbo].[Orders]([DeliveryMethodId] ASC);

