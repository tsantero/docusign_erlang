-module(swagger_billing_payment_request).

-export([encode/1]).

-export_type([swagger_billing_payment_request/0]).

-type swagger_billing_payment_request() ::
    #{ 'paymentAmount' => binary()
     }.

encode(#{ 'paymentAmount' := PaymentAmount
        }) ->
    #{ 'paymentAmount' => PaymentAmount
     }.
