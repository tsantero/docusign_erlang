-module(swagger_user_password_rules).

-export([encode/1]).

-export_type([swagger_user_password_rules/0]).

-type swagger_user_password_rules() ::
    #{ 'passwordRules' => swagger_account_password_rules:swagger_account_password_rules(),
       'userId' => binary()
     }.

encode(#{ 'passwordRules' := PasswordRules,
          'userId' := UserId
        }) ->
    #{ 'passwordRules' => PasswordRules,
       'userId' => UserId
     }.
