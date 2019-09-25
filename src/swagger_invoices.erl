-module(swagger_invoices).

-export([encode/1]).

-export_type([swagger_invoices/0]).

-type swagger_invoices() ::
    #{ 'amount' => binary(),
       'balance' => binary(),
       'dueDate' => binary(),
       'invoiceId' => binary(),
       'invoiceItems' => list(),
       'invoiceNumber' => binary(),
       'invoiceUri' => binary(),
       'nonTaxableAmount' => binary(),
       'pdfAvailable' => binary(),
       'taxableAmount' => binary()
     }.

encode(#{ 'amount' := Amount,
          'balance' := Balance,
          'dueDate' := DueDate,
          'invoiceId' := InvoiceId,
          'invoiceItems' := InvoiceItems,
          'invoiceNumber' := InvoiceNumber,
          'invoiceUri' := InvoiceUri,
          'nonTaxableAmount' := NonTaxableAmount,
          'pdfAvailable' := PdfAvailable,
          'taxableAmount' := TaxableAmount
        }) ->
    #{ 'amount' => Amount,
       'balance' => Balance,
       'dueDate' => DueDate,
       'invoiceId' => InvoiceId,
       'invoiceItems' => InvoiceItems,
       'invoiceNumber' => InvoiceNumber,
       'invoiceUri' => InvoiceUri,
       'nonTaxableAmount' => NonTaxableAmount,
       'pdfAvailable' => PdfAvailable,
       'taxableAmount' => TaxableAmount
     }.
