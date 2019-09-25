-module(swagger_billing_payment_response).

-export([encode/1]).

-export_type([swagger_billing_payment_response/0]).

-type swagger_billing_payment_response() ::
    #{ 'billingPayments' => list()
     }.

encode(#{ 'billingPayments' := BillingPayments
        }) ->
    #{ 'billingPayments' => BillingPayments
     }.
