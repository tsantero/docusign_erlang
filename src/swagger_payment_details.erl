-module(swagger_payment_details).

-export([encode/1]).

-export_type([swagger_payment_details/0]).

-type swagger_payment_details() ::
    #{ 'allowedPaymentMethods' => list(),
       'chargeId' => binary(),
       'currencyCode' => binary(),
       'currencyCodeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'gatewayAccountId' => binary(),
       'gatewayAccountIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'gatewayDisplayName' => binary(),
       'gatewayName' => binary(),
       'lineItems' => list(),
       'paymentOption' => binary(),
       'status' => binary(),
       'total' => swagger_money:swagger_money()
     }.

encode(#{ 'allowedPaymentMethods' := AllowedPaymentMethods,
          'chargeId' := ChargeId,
          'currencyCode' := CurrencyCode,
          'currencyCodeMetadata' := CurrencyCodeMetadata,
          'gatewayAccountId' := GatewayAccountId,
          'gatewayAccountIdMetadata' := GatewayAccountIdMetadata,
          'gatewayDisplayName' := GatewayDisplayName,
          'gatewayName' := GatewayName,
          'lineItems' := LineItems,
          'paymentOption' := PaymentOption,
          'status' := Status,
          'total' := Total
        }) ->
    #{ 'allowedPaymentMethods' => AllowedPaymentMethods,
       'chargeId' => ChargeId,
       'currencyCode' => CurrencyCode,
       'currencyCodeMetadata' => CurrencyCodeMetadata,
       'gatewayAccountId' => GatewayAccountId,
       'gatewayAccountIdMetadata' => GatewayAccountIdMetadata,
       'gatewayDisplayName' => GatewayDisplayName,
       'gatewayName' => GatewayName,
       'lineItems' => LineItems,
       'paymentOption' => PaymentOption,
       'status' => Status,
       'total' => Total
     }.
