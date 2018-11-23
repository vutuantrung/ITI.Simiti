﻿create proc iti.sProjectUpdate
(
	@ProjectId int,
	@Name nvarchar(32),
	@Project nvarchar(1000)
)
as
begin
	update iti.tProject
	set [Name] = @Name,
		Project = @Project
	where ProjectId = @ProjectId
	return 0;
end;