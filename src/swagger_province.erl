-module(swagger_province).

-export([encode/1]).

-export_type([swagger_province/0]).

-type swagger_province() ::
    #{ 'isoCode' => binary(),
       'name' => binary()
     }.

encode(#{ 'isoCode' := IsoCode,
          'name' := Name
        }) ->
    #{ 'isoCode' => IsoCode,
       'name' => Name
     }.
