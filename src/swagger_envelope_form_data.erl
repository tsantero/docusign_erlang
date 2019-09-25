-module(swagger_envelope_form_data).

-export([encode/1]).

-export_type([swagger_envelope_form_data/0]).

-type swagger_envelope_form_data() ::
    #{ 'emailSubject' => binary(),
       'envelopeId' => binary(),
       'formData' => list(),
       'recipientFormData' => list(),
       'sentDateTime' => binary(),
       'status' => binary()
     }.

encode(#{ 'emailSubject' := EmailSubject,
          'envelopeId' := EnvelopeId,
          'formData' := FormData,
          'recipientFormData' := RecipientFormData,
          'sentDateTime' := SentDateTime,
          'status' := Status
        }) ->
    #{ 'emailSubject' => EmailSubject,
       'envelopeId' => EnvelopeId,
       'formData' => FormData,
       'recipientFormData' => RecipientFormData,
       'sentDateTime' => SentDateTime,
       'status' => Status
     }.
