-module(swagger_account_minimum_password_length).

-export([encode/1]).

-export_type([swagger_account_minimum_password_length/0]).

-type swagger_account_minimum_password_length() ::
    #{ 'maximumLength' => binary(),
       'minimumLength' => binary()
     }.

encode(#{ 'maximumLength' := MaximumLength,
          'minimumLength' := MinimumLength
        }) ->
    #{ 'maximumLength' => MaximumLength,
       'minimumLength' => MinimumLength
     }.
