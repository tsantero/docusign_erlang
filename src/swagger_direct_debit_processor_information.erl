-module(swagger_direct_debit_processor_information).

-export([encode/1]).

-export_type([swagger_direct_debit_processor_information/0]).

-type swagger_direct_debit_processor_information() ::
    #{ 'bankBranchCode' => binary(),
       'bankCheckDigit' => binary(),
       'bankCode' => binary(),
       'bankName' => binary(),
       'bankTransferAccountName' => binary(),
       'bankTransferAccountNumber' => binary(),
       'bankTransferType' => binary(),
       'country' => binary(),
       'email' => binary(),
       'firstName' => binary(),
       'iBAN' => binary(),
       'lastName' => binary()
     }.

encode(#{ 'bankBranchCode' := BankBranchCode,
          'bankCheckDigit' := BankCheckDigit,
          'bankCode' := BankCode,
          'bankName' := BankName,
          'bankTransferAccountName' := BankTransferAccountName,
          'bankTransferAccountNumber' := BankTransferAccountNumber,
          'bankTransferType' := BankTransferType,
          'country' := Country,
          'email' := Email,
          'firstName' := FirstName,
          'iBAN' := IBAN,
          'lastName' := LastName
        }) ->
    #{ 'bankBranchCode' => BankBranchCode,
       'bankCheckDigit' => BankCheckDigit,
       'bankCode' => BankCode,
       'bankName' => BankName,
       'bankTransferAccountName' => BankTransferAccountName,
       'bankTransferAccountNumber' => BankTransferAccountNumber,
       'bankTransferType' => BankTransferType,
       'country' => Country,
       'email' => Email,
       'firstName' => FirstName,
       'iBAN' => IBAN,
       'lastName' => LastName
     }.
