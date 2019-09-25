-module(swagger_supported_languages).

-export([encode/1]).

-export_type([swagger_supported_languages/0]).

-type swagger_supported_languages() ::
    #{ 'languages' => list()
     }.

encode(#{ 'languages' := Languages
        }) ->
    #{ 'languages' => Languages
     }.
