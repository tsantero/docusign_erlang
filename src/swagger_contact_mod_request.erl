-module(swagger_contact_mod_request).

-export([encode/1]).

-export_type([swagger_contact_mod_request/0]).

-type swagger_contact_mod_request() ::
    #{ 'contactList' => list()
     }.

encode(#{ 'contactList' := ContactList
        }) ->
    #{ 'contactList' => ContactList
     }.
