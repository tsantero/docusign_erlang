-module(swagger_payment_gateway_account_setting).

-export([encode/1]).

-export_type([swagger_payment_gateway_account_setting/0]).

-type swagger_payment_gateway_account_setting() ::
    #{ 'apiFields' => binary(),
       'authorizationCode' => binary(),
       'credentialStatus' => binary(),
       'merchantId' => binary()
     }.

encode(#{ 'apiFields' := ApiFields,
          'authorizationCode' := AuthorizationCode,
          'credentialStatus' := CredentialStatus,
          'merchantId' := MerchantId
        }) ->
    #{ 'apiFields' => ApiFields,
       'authorizationCode' => AuthorizationCode,
       'credentialStatus' => CredentialStatus,
       'merchantId' => MerchantId
     }.
