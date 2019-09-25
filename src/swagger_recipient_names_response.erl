-module(swagger_recipient_names_response).

-export([encode/1]).

-export_type([swagger_recipient_names_response/0]).

-type swagger_recipient_names_response() ::
    #{ 'multipleUsers' => binary(),
       'recipientNames' => list(),
       'reservedRecipientEmail' => binary()
     }.

encode(#{ 'multipleUsers' := MultipleUsers,
          'recipientNames' := RecipientNames,
          'reservedRecipientEmail' := ReservedRecipientEmail
        }) ->
    #{ 'multipleUsers' => MultipleUsers,
       'recipientNames' => RecipientNames,
       'reservedRecipientEmail' => ReservedRecipientEmail
     }.
