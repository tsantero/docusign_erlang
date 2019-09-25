-module(swagger_template_notification_request).

-export([encode/1]).

-export_type([swagger_template_notification_request/0]).

-type swagger_template_notification_request() ::
    #{ 'expirations' => swagger_expirations:swagger_expirations(),
       'password' => binary(),
       'reminders' => swagger_reminders:swagger_reminders(),
       'useAccountDefaults' => binary()
     }.

encode(#{ 'expirations' := Expirations,
          'password' := Password,
          'reminders' := Reminders,
          'useAccountDefaults' := UseAccountDefaults
        }) ->
    #{ 'expirations' => Expirations,
       'password' => Password,
       'reminders' => Reminders,
       'useAccountDefaults' => UseAccountDefaults
     }.
