-module(swagger_console_view_request).

-export([encode/1]).

-export_type([swagger_console_view_request/0]).

-type swagger_console_view_request() ::
    #{ 'envelopeId' => binary(),
       'returnUrl' => binary()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'returnUrl' := ReturnUrl
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'returnUrl' => ReturnUrl
     }.
