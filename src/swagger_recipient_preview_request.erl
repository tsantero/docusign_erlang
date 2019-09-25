-module(swagger_recipient_preview_request).

-export([encode/1]).

-export_type([swagger_recipient_preview_request/0]).

-type swagger_recipient_preview_request() ::
    #{ 'assertionId' => binary(),
       'authenticationInstant' => binary(),
       'authenticationMethod' => binary(),
       'pingFrequency' => binary(),
       'pingUrl' => binary(),
       'recipientId' => binary(),
       'returnUrl' => binary(),
       'securityDomain' => binary(),
       'xFrameOptions' => binary(),
       'xFrameOptionsAllowFromUrl' => binary()
     }.

encode(#{ 'assertionId' := AssertionId,
          'authenticationInstant' := AuthenticationInstant,
          'authenticationMethod' := AuthenticationMethod,
          'pingFrequency' := PingFrequency,
          'pingUrl' := PingUrl,
          'recipientId' := RecipientId,
          'returnUrl' := ReturnUrl,
          'securityDomain' := SecurityDomain,
          'xFrameOptions' := XFrameOptions,
          'xFrameOptionsAllowFromUrl' := XFrameOptionsAllowFromUrl
        }) ->
    #{ 'assertionId' => AssertionId,
       'authenticationInstant' => AuthenticationInstant,
       'authenticationMethod' => AuthenticationMethod,
       'pingFrequency' => PingFrequency,
       'pingUrl' => PingUrl,
       'recipientId' => RecipientId,
       'returnUrl' => ReturnUrl,
       'securityDomain' => SecurityDomain,
       'xFrameOptions' => XFrameOptions,
       'xFrameOptionsAllowFromUrl' => XFrameOptionsAllowFromUrl
     }.
