-module(swagger_contact_update_response).

-export([encode/1]).

-export_type([swagger_contact_update_response/0]).

-type swagger_contact_update_response() ::
    #{ 'contacts' => list()
     }.

encode(#{ 'contacts' := Contacts
        }) ->
    #{ 'contacts' => Contacts
     }.
