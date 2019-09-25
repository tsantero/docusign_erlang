-module(swagger_account_password_lockout_duration_type).

-export([encode/1]).

-export_type([swagger_account_password_lockout_duration_type/0]).

-type swagger_account_password_lockout_duration_type() ::
    #{ 'options' => list()
     }.

encode(#{ 'options' := Options
        }) ->
    #{ 'options' => Options
     }.
