-module(swagger_bcc_email_address).

-export([encode/1]).

-export_type([swagger_bcc_email_address/0]).

-type swagger_bcc_email_address() ::
    #{ 'bccEmailAddressId' => binary(),
       'email' => binary()
     }.

encode(#{ 'bccEmailAddressId' := BccEmailAddressId,
          'email' := Email
        }) ->
    #{ 'bccEmailAddressId' => BccEmailAddressId,
       'email' => Email
     }.
