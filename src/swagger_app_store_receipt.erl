-module(swagger_app_store_receipt).

-export([encode/1]).

-export_type([swagger_app_store_receipt/0]).

-type swagger_app_store_receipt() ::
    #{ 'productId' => binary(),
       'receiptData' => binary()
     }.

encode(#{ 'productId' := ProductId,
          'receiptData' := ReceiptData
        }) ->
    #{ 'productId' => ProductId,
       'receiptData' => ReceiptData
     }.
