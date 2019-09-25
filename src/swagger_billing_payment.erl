-module(swagger_billing_payment).

-export([encode/1]).

-export_type([swagger_billing_payment/0]).

-type swagger_billing_payment() ::
    #{ 'amount' => binary(),
       'invoiceId' => binary(),
       'paymentId' => binary()
     }.

encode(#{ 'amount' := Amount,
          'invoiceId' := InvoiceId,
          'paymentId' := PaymentId
        }) ->
    #{ 'amount' => Amount,
       'invoiceId' => InvoiceId,
       'paymentId' => PaymentId
     }.
