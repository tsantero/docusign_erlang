-module(swagger_identity_verifications).

-export([encode/1]).

-export_type([swagger_identity_verifications/0]).

-type swagger_identity_verifications() ::
    #{ 'identityVerification' => list()
     }.

encode(#{ 'identityVerification' := IdentityVerification
        }) ->
    #{ 'identityVerification' => IdentityVerification
     }.
