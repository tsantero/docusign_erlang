-module(swagger_credit_card_information).

-export([encode/1]).

-export_type([swagger_credit_card_information/0]).

-type swagger_credit_card_information() ::
    #{ 'address' => swagger_address_information:swagger_address_information(),
       'cardNumber' => binary(),
       'cardType' => binary(),
       'cvNumber' => binary(),
       'expirationMonth' => binary(),
       'expirationYear' => binary(),
       'nameOnCard' => binary()
     }.

encode(#{ 'address' := Address,
          'cardNumber' := CardNumber,
          'cardType' := CardType,
          'cvNumber' := CvNumber,
          'expirationMonth' := ExpirationMonth,
          'expirationYear' := ExpirationYear,
          'nameOnCard' := NameOnCard
        }) ->
    #{ 'address' => Address,
       'cardNumber' => CardNumber,
       'cardType' => CardType,
       'cvNumber' => CvNumber,
       'expirationMonth' => ExpirationMonth,
       'expirationYear' => ExpirationYear,
       'nameOnCard' => NameOnCard
     }.
