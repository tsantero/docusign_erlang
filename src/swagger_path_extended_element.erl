-module(swagger_path_extended_element).

-export([encode/1]).

-export_type([swagger_path_extended_element/0]).

-type swagger_path_extended_element() ::
    #{ 'name' => binary(),
       'type' => binary(),
       'typeName' => binary()
     }.

encode(#{ 'name' := Name,
          'type' := Type,
          'typeName' := TypeName
        }) ->
    #{ 'name' => Name,
       'type' => Type,
       'typeName' => TypeName
     }.
