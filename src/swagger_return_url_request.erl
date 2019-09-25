-module(swagger_return_url_request).

-export([encode/1]).

-export_type([swagger_return_url_request/0]).

-type swagger_return_url_request() ::
    #{ 'returnUrl' => binary()
     }.

encode(#{ 'returnUrl' := ReturnUrl
        }) ->
    #{ 'returnUrl' => ReturnUrl
     }.
