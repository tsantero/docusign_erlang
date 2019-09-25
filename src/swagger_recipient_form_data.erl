-module(swagger_recipient_form_data).

-export([encode/1]).

-export_type([swagger_recipient_form_data/0]).

-type swagger_recipient_form_data() ::
    #{ 'DeclinedTime' => binary(),
       'DeliveredTime' => binary(),
       'email' => binary(),
       'formData' => list(),
       'name' => binary(),
       'recipientId' => binary(),
       'SentTime' => binary(),
       'SignedTime' => binary()
     }.

encode(#{ 'DeclinedTime' := DeclinedTime,
          'DeliveredTime' := DeliveredTime,
          'email' := Email,
          'formData' := FormData,
          'name' := Name,
          'recipientId' := RecipientId,
          'SentTime' := SentTime,
          'SignedTime' := SignedTime
        }) ->
    #{ 'DeclinedTime' => DeclinedTime,
       'DeliveredTime' => DeliveredTime,
       'email' => Email,
       'formData' => FormData,
       'name' => Name,
       'recipientId' => RecipientId,
       'SentTime' => SentTime,
       'SignedTime' => SignedTime
     }.
