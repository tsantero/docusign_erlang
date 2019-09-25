-module(swagger_account_address).

-export([encode/1]).

-export_type([swagger_account_address/0]).

-type swagger_account_address() ::
    #{ 'address1' => binary(),
       'address2' => binary(),
       'city' => binary(),
       'country' => binary(),
       'email' => binary(),
       'fax' => binary(),
       'firstName' => binary(),
       'lastName' => binary(),
       'phone' => binary(),
       'postalCode' => binary(),
       'state' => binary(),
       'supportedCountries' => list()
     }.

encode(#{ 'address1' := Address1,
          'address2' := Address2,
          'city' := City,
          'country' := Country,
          'email' := Email,
          'fax' := Fax,
          'firstName' := FirstName,
          'lastName' := LastName,
          'phone' := Phone,
          'postalCode' := PostalCode,
          'state' := State,
          'supportedCountries' := SupportedCountries
        }) ->
    #{ 'address1' => Address1,
       'address2' => Address2,
       'city' => City,
       'country' => Country,
       'email' => Email,
       'fax' => Fax,
       'firstName' => FirstName,
       'lastName' => LastName,
       'phone' => Phone,
       'postalCode' => PostalCode,
       'state' => State,
       'supportedCountries' => SupportedCountries
     }.
