component {

    property name="query" inject="provider:QueryBuilder@qb";

    function index( event, rc, prc ) {
        var result = query.select( [
            "entries.id",
            "slug",
            "createdBy",
            "updatedDate"
        ] )
            .from( "entries" )
            .when( event.valueExists( "slug" ), function( q ) {
                q.where( "slug", "like", "%#rc.slug#%" );
            } )
            .when( event.valueExists( "createdBy" ), function( q ) {
                q.where( "createdBy", rc.createdBy );
            } )
            .when( event.valueExists( "popular" ), function( q ) {
                q.addSelect( q.raw( "COUNT(*) AS installCount" ) )
                    .join( "installs", "entries.id", "installs.entryId" )
                    .groupBy( [ "entries.id", "slug", "createdBy", "updatedDate" ] )
                    .orderBy( "installCount", "desc" );
            } )
            .get();

        writeDump( var = result, abort = true );
    }

}
