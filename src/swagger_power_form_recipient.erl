-module(swagger_power_form_recipient).

-export([encode/1]).

-export_type([swagger_power_form_recipient/0]).

-type swagger_power_form_recipient() ::
    #{ 'accessCode' => binary(),
       'accessCodeLocked' => binary(),
       'accessCodeRequired' => binary(),
       'email' => binary(),
       'emailLocked' => binary(),
       'idCheckConfigurationName' => binary(),
       'idCheckRequired' => binary(),
       'name' => binary(),
       'recipientType' => binary(),
       'roleName' => binary(),
       'routingOrder' => binary(),
       'templateRequiresIdLookup' => binary(),
       'userNameLocked' => binary()
     }.

encode(#{ 'accessCode' := AccessCode,
          'accessCodeLocked' := AccessCodeLocked,
          'accessCodeRequired' := AccessCodeRequired,
          'email' := Email,
          'emailLocked' := EmailLocked,
          'idCheckConfigurationName' := IdCheckConfigurationName,
          'idCheckRequired' := IdCheckRequired,
          'name' := Name,
          'recipientType' := RecipientType,
          'roleName' := RoleName,
          'routingOrder' := RoutingOrder,
          'templateRequiresIdLookup' := TemplateRequiresIdLookup,
          'userNameLocked' := UserNameLocked
        }) ->
    #{ 'accessCode' => AccessCode,
       'accessCodeLocked' => AccessCodeLocked,
       'accessCodeRequired' => AccessCodeRequired,
       'email' => Email,
       'emailLocked' => EmailLocked,
       'idCheckConfigurationName' => IdCheckConfigurationName,
       'idCheckRequired' => IdCheckRequired,
       'name' => Name,
       'recipientType' => RecipientType,
       'roleName' => RoleName,
       'routingOrder' => RoutingOrder,
       'templateRequiresIdLookup' => TemplateRequiresIdLookup,
       'userNameLocked' => UserNameLocked
     }.
