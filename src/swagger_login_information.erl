-module(swagger_login_information).

-export([encode/1]).

-export_type([swagger_login_information/0]).

-type swagger_login_information() ::
    #{ 'apiPassword' => binary(),
       'loginAccounts' => list()
     }.

encode(#{ 'apiPassword' := ApiPassword,
          'loginAccounts' := LoginAccounts
        }) ->
    #{ 'apiPassword' => ApiPassword,
       'loginAccounts' => LoginAccounts
     }.
