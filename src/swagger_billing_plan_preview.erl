-module(swagger_billing_plan_preview).

-export([encode/1]).

-export_type([swagger_billing_plan_preview/0]).

-type swagger_billing_plan_preview() ::
    #{ 'currencyCode' => binary(),
       'invoice' => swagger_invoices:swagger_invoices(),
       'isProrated' => binary(),
       'subtotalAmount' => binary(),
       'taxAmount' => binary(),
       'totalAmount' => binary()
     }.

encode(#{ 'currencyCode' := CurrencyCode,
          'invoice' := Invoice,
          'isProrated' := IsProrated,
          'subtotalAmount' := SubtotalAmount,
          'taxAmount' := TaxAmount,
          'totalAmount' := TotalAmount
        }) ->
    #{ 'currencyCode' => CurrencyCode,
       'invoice' => Invoice,
       'isProrated' => IsProrated,
       'subtotalAmount' => SubtotalAmount,
       'taxAmount' => TaxAmount,
       'totalAmount' => TotalAmount
     }.
