-module(swagger_external_file).

-export([encode/1]).

-export_type([swagger_external_file/0]).

-type swagger_external_file() ::
    #{ 'date' => binary(),
       'id' => binary(),
       'img' => binary(),
       'name' => binary(),
       'size' => binary(),
       'supported' => binary(),
       'type' => binary(),
       'uri' => binary()
     }.

encode(#{ 'date' := Date,
          'id' := Id,
          'img' := Img,
          'name' := Name,
          'size' := Size,
          'supported' := Supported,
          'type' := Type,
          'uri' := Uri
        }) ->
    #{ 'date' => Date,
       'id' => Id,
       'img' => Img,
       'name' => Name,
       'size' => Size,
       'supported' => Supported,
       'type' => Type,
       'uri' => Uri
     }.
