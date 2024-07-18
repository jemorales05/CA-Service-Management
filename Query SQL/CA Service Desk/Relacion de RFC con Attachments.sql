use mdb
SELECT     
dbo.chg.chg_ref_num AS [RFC Number],
(SELECT sym FROM usp_change_type where id = dbo.chg.chgtype) as [Type],
dbo.attmnt.attmnt_name AS [Original File Name],
dbo.attmnt.file_name AS [Attachment File Name],
dbo.attmnt.rel_file_path AS Folder

FROM
dbo.attmnt INNER JOIN dbo.usp_lrel_attachments_changes ON dbo.attmnt.id = dbo.usp_lrel_attachments_changes.attmnt LEFT OUTER JOIN dbo.chg ON dbo.usp_lrel_attachments_changes.chg = dbo.chg.id

