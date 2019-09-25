-module(swagger_envelope_views).

-export([encode/1]).

-export_type([swagger_envelope_views/0]).

-type swagger_envelope_views() ::
    #{ 'url' => binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
