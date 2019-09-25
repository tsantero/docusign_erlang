-module(swagger_recipient_view_request).

-export([encode/1]).

-export_type([swagger_recipient_view_request/0]).

-type swagger_recipient_view_request() ::
    #{ 'assertionId' => binary(),
       'authenticationInstant' => binary(),
       'authenticationMethod' => binary(),
       'clientUserId' => binary(),
       'email' => binary(),
       'pingFrequency' => binary(),
       'pingUrl' => binary(),
       'recipientId' => binary(),
       'returnUrl' => binary(),
       'securityDomain' => binary(),
       'userId' => binary(),
       'userName' => binary(),
       'xFrameOptions' => binary(),
       'xFrameOptionsAllowFromUrl' => binary()
     }.

encode(#{ 'assertionId' := AssertionId,
          'authenticationInstant' := AuthenticationInstant,
          'authenticationMethod' := AuthenticationMethod,
          'clientUserId' := ClientUserId,
          'email' := Email,
          'pingFrequency' := PingFrequency,
          'pingUrl' := PingUrl,
          'recipientId' := RecipientId,
          'returnUrl' := ReturnUrl,
          'securityDomain' := SecurityDomain,
          'userId' := UserId,
          'userName' := UserName,
          'xFrameOptions' := XFrameOptions,
          'xFrameOptionsAllowFromUrl' := XFrameOptionsAllowFromUrl
        }) ->
    #{ 'assertionId' => AssertionId,
       'authenticationInstant' => AuthenticationInstant,
       'authenticationMethod' => AuthenticationMethod,
       'clientUserId' => ClientUserId,
       'email' => Email,
       'pingFrequency' => PingFrequency,
       'pingUrl' => PingUrl,
       'recipientId' => RecipientId,
       'returnUrl' => ReturnUrl,
       'securityDomain' => SecurityDomain,
       'userId' => UserId,
       'userName' => UserName,
       'xFrameOptions' => XFrameOptions,
       'xFrameOptionsAllowFromUrl' => XFrameOptionsAllowFromUrl
     }.
