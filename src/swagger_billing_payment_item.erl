-module(swagger_billing_payment_item).

-export([encode/1]).

-export_type([swagger_billing_payment_item/0]).

-type swagger_billing_payment_item() ::
    #{ 'amount' => binary(),
       'description' => binary(),
       'paymentDate' => binary(),
       'paymentId' => binary(),
       'paymentNumber' => binary()
     }.

encode(#{ 'amount' := Amount,
          'description' := Description,
          'paymentDate' := PaymentDate,
          'paymentId' := PaymentId,
          'paymentNumber' := PaymentNumber
        }) ->
    #{ 'amount' => Amount,
       'description' => Description,
       'paymentDate' => PaymentDate,
       'paymentId' => PaymentId,
       'paymentNumber' => PaymentNumber
     }.
