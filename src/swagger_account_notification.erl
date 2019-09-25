-module(swagger_account_notification).

-export([encode/1]).

-export_type([swagger_account_notification/0]).

-type swagger_account_notification() ::
    #{ 'expirations' => swagger_expirations:swagger_expirations(),
       'reminders' => swagger_reminders:swagger_reminders(),
       'userOverrideEnabled' => binary()
     }.

encode(#{ 'expirations' := Expirations,
          'reminders' := Reminders,
          'userOverrideEnabled' := UserOverrideEnabled
        }) ->
    #{ 'expirations' => Expirations,
       'reminders' => Reminders,
       'userOverrideEnabled' => UserOverrideEnabled
     }.
