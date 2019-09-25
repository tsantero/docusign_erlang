-module(swagger_payment_method_with_options).

-export([encode/1]).

-export_type([swagger_payment_method_with_options/0]).

-type swagger_payment_method_with_options() ::
    #{ 'supportedOptions' => list(),
       'type' => binary()
     }.

encode(#{ 'supportedOptions' := SupportedOptions,
          'type' := Type
        }) ->
    #{ 'supportedOptions' => SupportedOptions,
       'type' => Type
     }.
