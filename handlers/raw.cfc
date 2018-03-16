component {

    function index( event, rc, prc ) {
        var bindings = {};
        var sql = "SELECT `entries`.`id`, `slug`, `createdBy`, `updatedDate`";
        if ( event.valueExists( "popular" ) ) {
            sql &= ", COUNT(*) AS `installCount`";
        }
        sql &= " FROM `entries`";
        if ( event.valueExists( "popular" ) ) {
            sql &= " JOIN `installs` ON `entries`.`id` = `installs`.`entryId`";
        }
        sql &= " WHERE 1 = 1";
        if ( event.valueExists( "slug" ) ) {
            sql &= " AND `slug` LIKE :slug";
            bindings[ "slug" ] = {
                value = "%#rc.slug#%",
                cfsqltype = "CF_SQL_VARCHAR"
            };
        }
        if ( event.valueExists( "createdBy" ) ) {
            sql &= " AND `createdBy` = :createdBy";
            bindings[ "createdBy" ] = {
                value = createdBy,
                cfsqltype = "CF_SQL_VARCHAR"
            };
        }
        if ( event.valueExists( "popular" ) ) {
            sql &= " GROUP BY `entries`.`id`, `slug`, `createdBy`, `updatedDate` ORDER BY `installCount` DESC";
        }
        writeDump( var = queryExecute( sql, bindings ), abort = true );
    }

}
