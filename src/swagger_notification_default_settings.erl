-module(swagger_notification_default_settings).

-export([encode/1]).

-export_type([swagger_notification_default_settings/0]).

-type swagger_notification_default_settings() ::
    #{ 'senderEmailNotifications' => swagger_sender_email_notifications:swagger_sender_email_notifications(),
       'signerEmailNotifications' => swagger_signer_email_notifications:swagger_signer_email_notifications()
     }.

encode(#{ 'senderEmailNotifications' := SenderEmailNotifications,
          'signerEmailNotifications' := SignerEmailNotifications
        }) ->
    #{ 'senderEmailNotifications' => SenderEmailNotifications,
       'signerEmailNotifications' => SignerEmailNotifications
     }.
