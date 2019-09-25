-module(swagger_payment_gateway_accounts_info).

-export([encode/1]).

-export_type([swagger_payment_gateway_accounts_info/0]).

-type swagger_payment_gateway_accounts_info() ::
    #{ 'paymentGatewayAccounts' => list()
     }.

encode(#{ 'paymentGatewayAccounts' := PaymentGatewayAccounts
        }) ->
    #{ 'paymentGatewayAccounts' => PaymentGatewayAccounts
     }.
