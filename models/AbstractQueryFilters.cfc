component {

	property name="query";

    function apply( required query, rc = {} ) {
        variables.query = arguments.query;

        for ( var key in rc ) {
            if ( variables.keyExists( key ) && isCustomFunction( variables[ key ] ) ) {
                var func = variables[ key ];
                func( rc[ key ] );
            }
        }

        return variables.query;
    }

}
