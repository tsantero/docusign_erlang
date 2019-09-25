-module(swagger_template_views).

-export([encode/1]).

-export_type([swagger_template_views/0]).

-type swagger_template_views() ::
    #{ 'url' => binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
