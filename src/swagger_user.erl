-module(swagger_user).

-export([encode/1]).

-export_type([swagger_user/0]).

-type swagger_user() ::
    #{ 'cellPhoneNumber' => binary(),
       'countryCode' => binary(),
       'credentials' => list(),
       'displayName' => binary(),
       'email' => binary(),
       'externalClaims' => list()
     }.

encode(#{ 'cellPhoneNumber' := CellPhoneNumber,
          'countryCode' := CountryCode,
          'credentials' := Credentials,
          'displayName' := DisplayName,
          'email' := Email,
          'externalClaims' := ExternalClaims
        }) ->
    #{ 'cellPhoneNumber' => CellPhoneNumber,
       'countryCode' => CountryCode,
       'credentials' => Credentials,
       'displayName' => DisplayName,
       'email' => Email,
       'externalClaims' => ExternalClaims
     }.
