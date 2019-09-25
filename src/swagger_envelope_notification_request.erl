-module(swagger_envelope_notification_request).

-export([encode/1]).

-export_type([swagger_envelope_notification_request/0]).

-type swagger_envelope_notification_request() ::
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
