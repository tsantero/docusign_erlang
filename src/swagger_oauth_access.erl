-module(swagger_oauth_access).

-export([encode/1]).

-export_type([swagger_oauth_access/0]).

-type swagger_oauth_access() ::
    #{ 'access_token' => binary(),
       'data' => list(),
       'expires_in' => binary(),
       'refresh_token' => binary(),
       'scope' => binary(),
       'token_type' => binary()
     }.

encode(#{ 'access_token' := AccessToken,
          'data' := Data,
          'expires_in' := ExpiresIn,
          'refresh_token' := RefreshToken,
          'scope' := Scope,
          'token_type' := TokenType
        }) ->
    #{ 'access_token' => AccessToken,
       'data' => Data,
       'expires_in' => ExpiresIn,
       'refresh_token' => RefreshToken,
       'scope' => Scope,
       'token_type' => TokenType
     }.
