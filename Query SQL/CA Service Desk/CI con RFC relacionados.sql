use mdb
SELECT        ca_owned_resource.resource_name, chg.chg_ref_num
FROM            ca_owned_resource RIGHT OUTER JOIN
                         usp_lrel_asset_chgnr ON ca_owned_resource.own_resource_uuid = usp_lrel_asset_chgnr.nr LEFT OUTER JOIN
                         chg ON usp_lrel_asset_chgnr.chg = chg.id order by chg.id ASC