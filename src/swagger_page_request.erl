-module(swagger_page_request).

-export([encode/1]).

-export_type([swagger_page_request/0]).

-type swagger_page_request() ::
    #{ 'password' => binary(),
       'rotate' => binary()
     }.

encode(#{ 'password' := Password,
          'rotate' := Rotate
        }) ->
    #{ 'password' => Password,
       'rotate' => Rotate
     }.
