-module(swagger_billing_payments_response).

-export([encode/1]).

-export_type([swagger_billing_payments_response/0]).

-type swagger_billing_payments_response() ::
    #{ 'billingPayments' => list(),
       'nextUri' => binary(),
       'previousUri' => binary()
     }.

encode(#{ 'billingPayments' := BillingPayments,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri
        }) ->
    #{ 'billingPayments' => BillingPayments,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri
     }.
