-module(swagger_captive_recipient_information).

-export([encode/1]).

-export_type([swagger_captive_recipient_information/0]).

-type swagger_captive_recipient_information() ::
    #{ 'captiveRecipients' => list()
     }.

encode(#{ 'captiveRecipients' := CaptiveRecipients
        }) ->
    #{ 'captiveRecipients' => CaptiveRecipients
     }.
