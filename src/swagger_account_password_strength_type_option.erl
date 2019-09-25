-module(swagger_account_password_strength_type_option).

-export([encode/1]).

-export_type([swagger_account_password_strength_type_option/0]).

-type swagger_account_password_strength_type_option() ::
    #{ 'minimumLength' => binary(),
       'name' => binary(),
       'passwordIncludeDigit' => binary(),
       'passwordIncludeDigitOrSpecialCharacter' => binary(),
       'passwordIncludeLowerCase' => binary(),
       'passwordIncludeSpecialCharacter' => binary(),
       'passwordIncludeUpperCase' => binary()
     }.

encode(#{ 'minimumLength' := MinimumLength,
          'name' := Name,
          'passwordIncludeDigit' := PasswordIncludeDigit,
          'passwordIncludeDigitOrSpecialCharacter' := PasswordIncludeDigitOrSpecialCharacter,
          'passwordIncludeLowerCase' := PasswordIncludeLowerCase,
          'passwordIncludeSpecialCharacter' := PasswordIncludeSpecialCharacter,
          'passwordIncludeUpperCase' := PasswordIncludeUpperCase
        }) ->
    #{ 'minimumLength' => MinimumLength,
       'name' => Name,
       'passwordIncludeDigit' => PasswordIncludeDigit,
       'passwordIncludeDigitOrSpecialCharacter' => PasswordIncludeDigitOrSpecialCharacter,
       'passwordIncludeLowerCase' => PasswordIncludeLowerCase,
       'passwordIncludeSpecialCharacter' => PasswordIncludeSpecialCharacter,
       'passwordIncludeUpperCase' => PasswordIncludeUpperCase
     }.
