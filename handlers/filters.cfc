component {

    property name="EntryFilters" inject="id";

    function index( event, rc, prc ) {
        var query = getInstance( "QueryBuilder@qb" );
        query.select( [ "entries.id", "slug", "createdBy", "updatedDate" ] )
            .from( "entries" )
            .orderBy( "updatedDate", "desc" );
        EntryFilters.apply( query, rc );
        var result = query.get();
        writeDump( var = result, abort = true );
    }

}
