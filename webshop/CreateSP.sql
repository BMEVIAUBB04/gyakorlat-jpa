CREATE PROCEDURE FizetesModLetrehozasa
(
@fmod nvarchar(20),
@hatarido int
)
AS
insert into FizetesMod
values(@fmod,@hatarido)
select scope_identity() as UjId
