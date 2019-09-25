-module(swagger_property_metadata).

-export([encode/1]).

-export_type([swagger_property_metadata/0]).

-type swagger_property_metadata() ::
    #{ 'options' => list(),
       'rights' => binary()
     }.

encode(#{ 'options' := Options,
          'rights' := Rights
        }) ->
    #{ 'options' => Options,
       'rights' => Rights
     }.
