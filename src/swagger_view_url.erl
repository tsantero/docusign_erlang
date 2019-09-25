-module(swagger_view_url).

-export([encode/1]).

-export_type([swagger_view_url/0]).

-type swagger_view_url() ::
    #{ 'url' => binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
