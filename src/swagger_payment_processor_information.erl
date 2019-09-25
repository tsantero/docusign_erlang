-module(swagger_payment_processor_information).

-export([encode/1]).

-export_type([swagger_payment_processor_information/0]).

-type swagger_payment_processor_information() ::
    #{ 'address' => swagger_address_information:swagger_address_information(),
       'billingAgreementId' => binary(),
       'email' => binary()
     }.

encode(#{ 'address' := Address,
          'billingAgreementId' := BillingAgreementId,
          'email' := Email
        }) ->
    #{ 'address' => Address,
       'billingAgreementId' => BillingAgreementId,
       'email' => Email
     }.
