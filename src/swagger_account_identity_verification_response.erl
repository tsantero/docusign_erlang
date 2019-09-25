-module(swagger_account_identity_verification_response).

-export([encode/1]).

-export_type([swagger_account_identity_verification_response/0]).

-type swagger_account_identity_verification_response() ::
    #{ 'identityVerification' => list()
     }.

encode(#{ 'identityVerification' := IdentityVerification
        }) ->
    #{ 'identityVerification' => IdentityVerification
     }.
