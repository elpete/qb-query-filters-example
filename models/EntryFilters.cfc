component extends="AbstractQueryFilters" {

    function slug( slug ) {
        query.where( "slug", "like", "%#slug#%" );
    }

    function createdBy( authorName ) {
        query.where( "createdBy", createdBy );
    }

    function popular() {
    	query.addSelect( query.raw( "COUNT(*) AS installCount" ) )
    		.join( "installs", "entries.id", "installs.entryId" )
    		.groupBy( [ "entries.id", "slug", "createdBy", "updatedDate" ] )
        	.orderBy( "installCount", "desc" );
    }

}
