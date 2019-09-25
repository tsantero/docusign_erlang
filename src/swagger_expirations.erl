-module(swagger_expirations).

-export([encode/1]).

-export_type([swagger_expirations/0]).

-type swagger_expirations() ::
    #{ 'expireAfter' => binary(),
       'expireEnabled' => binary(),
       'expireWarn' => binary()
     }.

encode(#{ 'expireAfter' := ExpireAfter,
          'expireEnabled' := ExpireEnabled,
          'expireWarn' := ExpireWarn
        }) ->
    #{ 'expireAfter' => ExpireAfter,
       'expireEnabled' => ExpireEnabled,
       'expireWarn' => ExpireWarn
     }.
