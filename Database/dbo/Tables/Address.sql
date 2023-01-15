CREATE TABLE [dbo].[Address] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (MAX) NULL,
    [LastName]  NVARCHAR (MAX) NULL,
    [Street]    NVARCHAR (MAX) NULL,
    [City]      NVARCHAR (MAX) NULL,
    [State]     NVARCHAR (MAX) NULL,
    [ZipCode]   NVARCHAR (MAX) NULL,
    [AppUserId] NVARCHAR (450) NOT NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Address_AspNetUsers_AppUserId] FOREIGN KEY ([AppUserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Address_AppUserId]
    ON [dbo].[Address]([AppUserId] ASC);

