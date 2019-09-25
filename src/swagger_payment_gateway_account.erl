-module(swagger_payment_gateway_account).

-export([encode/1]).

-export_type([swagger_payment_gateway_account/0]).

-type swagger_payment_gateway_account() ::
    #{ 'config' => swagger_payment_gateway_account_setting:swagger_payment_gateway_account_setting(),
       'displayName' => binary(),
       'isEnabled' => binary(),
       'isLegacy' => binary(),
       'lastModified' => binary(),
       'paymentGateway' => binary(),
       'paymentGatewayAccountId' => binary(),
       'paymentGatewayDisplayName' => binary(),
       'payPalLegacySettings' => swagger_pay_pal_legacy_settings:swagger_pay_pal_legacy_settings(),
       'supportedCurrencies' => list(),
       'supportedPaymentMethods' => list(),
       'supportedPaymentMethodsWithOptions' => list()
     }.

encode(#{ 'config' := Config,
          'displayName' := DisplayName,
          'isEnabled' := IsEnabled,
          'isLegacy' := IsLegacy,
          'lastModified' := LastModified,
          'paymentGateway' := PaymentGateway,
          'paymentGatewayAccountId' := PaymentGatewayAccountId,
          'paymentGatewayDisplayName' := PaymentGatewayDisplayName,
          'payPalLegacySettings' := PayPalLegacySettings,
          'supportedCurrencies' := SupportedCurrencies,
          'supportedPaymentMethods' := SupportedPaymentMethods,
          'supportedPaymentMethodsWithOptions' := SupportedPaymentMethodsWithOptions
        }) ->
    #{ 'config' => Config,
       'displayName' => DisplayName,
       'isEnabled' => IsEnabled,
       'isLegacy' => IsLegacy,
       'lastModified' => LastModified,
       'paymentGateway' => PaymentGateway,
       'paymentGatewayAccountId' => PaymentGatewayAccountId,
       'paymentGatewayDisplayName' => PaymentGatewayDisplayName,
       'payPalLegacySettings' => PayPalLegacySettings,
       'supportedCurrencies' => SupportedCurrencies,
       'supportedPaymentMethods' => SupportedPaymentMethods,
       'supportedPaymentMethodsWithOptions' => SupportedPaymentMethodsWithOptions
     }.
