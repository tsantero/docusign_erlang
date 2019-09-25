-module(swagger_power_form_form_data_recipient).

-export([encode/1]).

-export_type([swagger_power_form_form_data_recipient/0]).

-type swagger_power_form_form_data_recipient() ::
    #{ 'email' => binary(),
       'formData' => list(),
       'name' => binary(),
       'recipientId' => binary()
     }.

encode(#{ 'email' := Email,
          'formData' := FormData,
          'name' := Name,
          'recipientId' := RecipientId
        }) ->
    #{ 'email' => Email,
       'formData' => FormData,
       'name' => Name,
       'recipientId' => RecipientId
     }.
