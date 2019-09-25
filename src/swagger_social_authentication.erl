-module(swagger_social_authentication).

-export([encode/1]).

-export_type([swagger_social_authentication/0]).

-type swagger_social_authentication() ::
    #{ 'authentication' => binary()
     }.

encode(#{ 'authentication' := Authentication
        }) ->
    #{ 'authentication' => Authentication
     }.
