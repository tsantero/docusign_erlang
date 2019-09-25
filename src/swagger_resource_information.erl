-module(swagger_resource_information).

-export([encode/1]).

-export_type([swagger_resource_information/0]).

-type swagger_resource_information() ::
    #{ 'resources' => list()
     }.

encode(#{ 'resources' := Resources
        }) ->
    #{ 'resources' => Resources
     }.
