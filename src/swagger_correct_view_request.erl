-module(swagger_correct_view_request).

-export([encode/1]).

-export_type([swagger_correct_view_request/0]).

-type swagger_correct_view_request() ::
    #{ 'returnUrl' => binary(),
       'suppressNavigation' => binary()
     }.

encode(#{ 'returnUrl' := ReturnUrl,
          'suppressNavigation' := SuppressNavigation
        }) ->
    #{ 'returnUrl' => ReturnUrl,
       'suppressNavigation' => SuppressNavigation
     }.
