-module(swagger_contact_phone_number).

-export([encode/1]).

-export_type([swagger_contact_phone_number/0]).

-type swagger_contact_phone_number() ::
    #{ 'phoneNumber' => binary(),
       'phoneType' => binary()
     }.

encode(#{ 'phoneNumber' := PhoneNumber,
          'phoneType' := PhoneType
        }) ->
    #{ 'phoneNumber' => PhoneNumber,
       'phoneType' => PhoneType
     }.
