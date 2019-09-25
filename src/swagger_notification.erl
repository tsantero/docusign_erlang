-module(swagger_notification).

-export([encode/1]).

-export_type([swagger_notification/0]).

-type swagger_notification() ::
    #{ 'expirations' => swagger_expirations:swagger_expirations(),
       'reminders' => swagger_reminders:swagger_reminders(),
       'useAccountDefaults' => binary()
     }.

encode(#{ 'expirations' := Expirations,
          'reminders' := Reminders,
          'useAccountDefaults' := UseAccountDefaults
        }) ->
    #{ 'expirations' => Expirations,
       'reminders' => Reminders,
       'useAccountDefaults' => UseAccountDefaults
     }.
