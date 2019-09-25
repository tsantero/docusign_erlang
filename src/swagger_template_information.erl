-module(swagger_template_information).

-export([encode/1]).

-export_type([swagger_template_information/0]).

-type swagger_template_information() ::
    #{ 'templates' => list()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
