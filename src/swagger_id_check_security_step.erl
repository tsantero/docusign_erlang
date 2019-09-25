-module(swagger_id_check_security_step).

-export([encode/1]).

-export_type([swagger_id_check_security_step/0]).

-type swagger_id_check_security_step() ::
    #{ 'authType' => binary()
     }.

encode(#{ 'authType' := AuthType
        }) ->
    #{ 'authType' => AuthType
     }.
