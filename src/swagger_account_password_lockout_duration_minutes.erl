-module(swagger_account_password_lockout_duration_minutes).

-export([encode/1]).

-export_type([swagger_account_password_lockout_duration_minutes/0]).

-type swagger_account_password_lockout_duration_minutes() ::
    #{ 'maximumMinutes' => binary(),
       'minimumMinutes' => binary()
     }.

encode(#{ 'maximumMinutes' := MaximumMinutes,
          'minimumMinutes' := MinimumMinutes
        }) ->
    #{ 'maximumMinutes' => MaximumMinutes,
       'minimumMinutes' => MinimumMinutes
     }.
