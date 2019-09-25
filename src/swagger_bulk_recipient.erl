-module(swagger_bulk_recipient).

-export([encode/1]).

-export_type([swagger_bulk_recipient/0]).

-type swagger_bulk_recipient() ::
    #{ 'accessCode' => binary(),
       'email' => binary(),
       'errorDetails' => list(),
       'identification' => binary(),
       'name' => binary(),
       'note' => binary(),
       'phoneNumber' => binary(),
       'recipientSignatureProviderInfo' => list(),
       'rowNumber' => binary(),
       'tabLabels' => list()
     }.

encode(#{ 'accessCode' := AccessCode,
          'email' := Email,
          'errorDetails' := ErrorDetails,
          'identification' := Identification,
          'name' := Name,
          'note' := Note,
          'phoneNumber' := PhoneNumber,
          'recipientSignatureProviderInfo' := RecipientSignatureProviderInfo,
          'rowNumber' := RowNumber,
          'tabLabels' := TabLabels
        }) ->
    #{ 'accessCode' => AccessCode,
       'email' => Email,
       'errorDetails' => ErrorDetails,
       'identification' => Identification,
       'name' => Name,
       'note' => Note,
       'phoneNumber' => PhoneNumber,
       'recipientSignatureProviderInfo' => RecipientSignatureProviderInfo,
       'rowNumber' => RowNumber,
       'tabLabels' => TabLabels
     }.
