-module(swagger_custom_fields_envelope).

-export([encode/1]).

-export_type([swagger_custom_fields_envelope/0]).

-type swagger_custom_fields_envelope() ::
    #{ 'listCustomFields' => list(),
       'textCustomFields' => list()
     }.

encode(#{ 'listCustomFields' := ListCustomFields,
          'textCustomFields' := TextCustomFields
        }) ->
    #{ 'listCustomFields' => ListCustomFields,
       'textCustomFields' => TextCustomFields
     }.
