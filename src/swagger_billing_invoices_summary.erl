-module(swagger_billing_invoices_summary).

-export([encode/1]).

-export_type([swagger_billing_invoices_summary/0]).

-type swagger_billing_invoices_summary() ::
    #{ 'billingInvoices' => list(),
       'pastDueBalance' => binary(),
       'paymentAllowed' => binary()
     }.

encode(#{ 'billingInvoices' := BillingInvoices,
          'pastDueBalance' := PastDueBalance,
          'paymentAllowed' := PaymentAllowed
        }) ->
    #{ 'billingInvoices' => BillingInvoices,
       'pastDueBalance' => PastDueBalance,
       'paymentAllowed' => PaymentAllowed
     }.
