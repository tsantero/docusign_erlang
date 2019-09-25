-module(swagger_envelope_templates).

-export([encode/1]).

-export_type([swagger_envelope_templates/0]).

-type swagger_envelope_templates() ::
    #{ 'templates' => list()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
