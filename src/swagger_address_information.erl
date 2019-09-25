-module(swagger_address_information).

-export([encode/1]).

-export_type([swagger_address_information/0]).

-type swagger_address_information() ::
    #{ 'address1' => binary(),
       'address2' => binary(),
       'city' => binary(),
       'country' => binary(),
       'fax' => binary(),
       'phone' => binary(),
       'postalCode' => binary(),
       'stateOrProvince' => binary()
     }.

encode(#{ 'address1' := Address1,
          'address2' := Address2,
          'city' := City,
          'country' := Country,
          'fax' := Fax,
          'phone' := Phone,
          'postalCode' := PostalCode,
          'stateOrProvince' := StateOrProvince
        }) ->
    #{ 'address1' => Address1,
       'address2' => Address2,
       'city' => City,
       'country' => Country,
       'fax' => Fax,
       'phone' => Phone,
       'postalCode' => PostalCode,
       'stateOrProvince' => StateOrProvince
     }.
