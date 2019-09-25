-module(swagger_account_identity_verification_step).

-export([encode/1]).

-export_type([swagger_account_identity_verification_step/0]).

-type swagger_account_identity_verification_step() ::
    #{ 'name' => binary(),
       'type' => binary()
     }.

encode(#{ 'name' := Name,
          'type' := Type
        }) ->
    #{ 'name' => Name,
       'type' => Type
     }.
