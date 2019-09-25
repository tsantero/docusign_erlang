-module(swagger_signature_properties).

-export([encode/1]).

-export_type([swagger_signature_properties/0]).

-type swagger_signature_properties() ::
    #{ 'filter' => binary(),
       'subFilter' => binary()
     }.

encode(#{ 'filter' := Filter,
          'subFilter' := SubFilter
        }) ->
    #{ 'filter' => Filter,
       'subFilter' => SubFilter
     }.
