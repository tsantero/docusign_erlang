-module(swagger_purchased_envelopes_information).

-export([encode/1]).

-export_type([swagger_purchased_envelopes_information/0]).

-type swagger_purchased_envelopes_information() ::
    #{ 'amount' => binary(),
       'appName' => binary(),
       'currencyCode' => binary(),
       'platform' => binary(),
       'productId' => binary(),
       'quantity' => binary(),
       'receiptData' => binary(),
       'storeName' => binary(),
       'transactionId' => binary()
     }.

encode(#{ 'amount' := Amount,
          'appName' := AppName,
          'currencyCode' := CurrencyCode,
          'platform' := Platform,
          'productId' := ProductId,
          'quantity' := Quantity,
          'receiptData' := ReceiptData,
          'storeName' := StoreName,
          'transactionId' := TransactionId
        }) ->
    #{ 'amount' => Amount,
       'appName' => AppName,
       'currencyCode' => CurrencyCode,
       'platform' => Platform,
       'productId' => ProductId,
       'quantity' => Quantity,
       'receiptData' => ReceiptData,
       'storeName' => StoreName,
       'transactionId' => TransactionId
     }.
