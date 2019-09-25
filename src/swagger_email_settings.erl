-module(swagger_email_settings).

-export([encode/1]).

-export_type([swagger_email_settings/0]).

-type swagger_email_settings() ::
    #{ 'bccEmailAddresses' => list(),
       'replyEmailAddressOverride' => binary(),
       'replyEmailNameOverride' => binary()
     }.

encode(#{ 'bccEmailAddresses' := BccEmailAddresses,
          'replyEmailAddressOverride' := ReplyEmailAddressOverride,
          'replyEmailNameOverride' := ReplyEmailNameOverride
        }) ->
    #{ 'bccEmailAddresses' => BccEmailAddresses,
       'replyEmailAddressOverride' => ReplyEmailAddressOverride,
       'replyEmailNameOverride' => ReplyEmailNameOverride
     }.
