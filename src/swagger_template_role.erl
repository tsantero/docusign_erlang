-module(swagger_template_role).

-export([encode/1]).

-export_type([swagger_template_role/0]).

-type swagger_template_role() ::
    #{ 'accessCode' => binary(),
       'clientUserId' => binary(),
       'defaultRecipient' => binary(),
       'email' => binary(),
       'emailNotification' => swagger_recipient_email_notification:swagger_recipient_email_notification(),
       'embeddedRecipientStartURL' => binary(),
       'inPersonSignerName' => binary(),
       'name' => binary(),
       'recipientSignatureProviders' => list(),
       'roleName' => binary(),
       'routingOrder' => binary(),
       'signingGroupId' => binary(),
       'tabs' => swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs()
     }.

encode(#{ 'accessCode' := AccessCode,
          'clientUserId' := ClientUserId,
          'defaultRecipient' := DefaultRecipient,
          'email' := Email,
          'emailNotification' := EmailNotification,
          'embeddedRecipientStartURL' := EmbeddedRecipientStartURL,
          'inPersonSignerName' := InPersonSignerName,
          'name' := Name,
          'recipientSignatureProviders' := RecipientSignatureProviders,
          'roleName' := RoleName,
          'routingOrder' := RoutingOrder,
          'signingGroupId' := SigningGroupId,
          'tabs' := Tabs
        }) ->
    #{ 'accessCode' => AccessCode,
       'clientUserId' => ClientUserId,
       'defaultRecipient' => DefaultRecipient,
       'email' => Email,
       'emailNotification' => EmailNotification,
       'embeddedRecipientStartURL' => EmbeddedRecipientStartURL,
       'inPersonSignerName' => InPersonSignerName,
       'name' => Name,
       'recipientSignatureProviders' => RecipientSignatureProviders,
       'roleName' => RoleName,
       'routingOrder' => RoutingOrder,
       'signingGroupId' => SigningGroupId,
       'tabs' => Tabs
     }.
