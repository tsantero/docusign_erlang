-module(swagger_account_password_strength_type).

-export([encode/1]).

-export_type([swagger_account_password_strength_type/0]).

-type swagger_account_password_strength_type() ::
    #{ 'options' => list()
     }.

encode(#{ 'options' := Options
        }) ->
    #{ 'options' => Options
     }.
