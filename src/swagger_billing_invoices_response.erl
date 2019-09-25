-module(swagger_billing_invoices_response).

-export([encode/1]).

-export_type([swagger_billing_invoices_response/0]).

-type swagger_billing_invoices_response() ::
    #{ 'billingInvoices' => list(),
       'nextUri' => binary(),
       'previousUri' => binary()
     }.

encode(#{ 'billingInvoices' := BillingInvoices,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri
        }) ->
    #{ 'billingInvoices' => BillingInvoices,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri
     }.
