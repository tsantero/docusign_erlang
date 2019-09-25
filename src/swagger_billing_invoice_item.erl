-module(swagger_billing_invoice_item).

-export([encode/1]).

-export_type([swagger_billing_invoice_item/0]).

-type swagger_billing_invoice_item() ::
    #{ 'chargeAmount' => binary(),
       'chargeName' => binary(),
       'invoiceItemId' => binary(),
       'quantity' => binary(),
       'unitPrice' => binary()
     }.

encode(#{ 'chargeAmount' := ChargeAmount,
          'chargeName' := ChargeName,
          'invoiceItemId' := InvoiceItemId,
          'quantity' := Quantity,
          'unitPrice' := UnitPrice
        }) ->
    #{ 'chargeAmount' => ChargeAmount,
       'chargeName' => ChargeName,
       'invoiceItemId' => InvoiceItemId,
       'quantity' => Quantity,
       'unitPrice' => UnitPrice
     }.
