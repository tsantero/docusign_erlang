-module(swagger_recipients_update_summary).

-export([encode/1]).

-export_type([swagger_recipients_update_summary/0]).

-type swagger_recipients_update_summary() ::
    #{ 'recipientUpdateResults' => list()
     }.

encode(#{ 'recipientUpdateResults' := RecipientUpdateResults
        }) ->
    #{ 'recipientUpdateResults' => RecipientUpdateResults
     }.
