-module(swagger_user_password_information).

-export([encode/1]).

-export_type([swagger_user_password_information/0]).

-type swagger_user_password_information() ::
    #{ 'currentPassword' => binary(),
       'email' => binary(),
       'forgottenPasswordInfo' => swagger_forgotten_password_information:swagger_forgotten_password_information(),
       'newPassword' => binary()
     }.

encode(#{ 'currentPassword' := CurrentPassword,
          'email' := Email,
          'forgottenPasswordInfo' := ForgottenPasswordInfo,
          'newPassword' := NewPassword
        }) ->
    #{ 'currentPassword' => CurrentPassword,
       'email' => Email,
       'forgottenPasswordInfo' => ForgottenPasswordInfo,
       'newPassword' => NewPassword
     }.
