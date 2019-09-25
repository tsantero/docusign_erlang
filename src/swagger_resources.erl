-module(swagger_resources).

-export([encode/1]).

-export_type([swagger_resources/0]).

-type swagger_resources() ::
    #{ 'resources' => list()
     }.

encode(#{ 'resources' := Resources
        }) ->
    #{ 'resources' => Resources
     }.
