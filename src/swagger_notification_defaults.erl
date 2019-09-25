-module(swagger_notification_defaults).

-export([encode/1]).

-export_type([swagger_notification_defaults/0]).

-type swagger_notification_defaults() ::
    #{ 'apiEmailNotifications' => swagger_notification_default_settings:swagger_notification_default_settings(),
       'emailNotifications' => swagger_notification_default_settings:swagger_notification_default_settings()
     }.

encode(#{ 'apiEmailNotifications' := ApiEmailNotifications,
          'emailNotifications' := EmailNotifications
        }) ->
    #{ 'apiEmailNotifications' => ApiEmailNotifications,
       'emailNotifications' => EmailNotifications
     }.
