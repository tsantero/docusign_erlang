-module(swagger_payments).

-export([encode/1]).

-export_type([swagger_payments/0]).

-type swagger_payments() ::
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
