-module(swagger_custom_fields).

-export([encode/1]).

-export_type([swagger_custom_fields/0]).

-type swagger_custom_fields() ::
    #{ 'listCustomFields' => list(),
       'textCustomFields' => list()
     }.

encode(#{ 'listCustomFields' := ListCustomFields,
          'textCustomFields' := TextCustomFields
        }) ->
    #{ 'listCustomFields' => ListCustomFields,
       'textCustomFields' => TextCustomFields
     }.
