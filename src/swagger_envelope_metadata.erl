-module(swagger_envelope_metadata).

-export([encode/1]).

-export_type([swagger_envelope_metadata/0]).

-type swagger_envelope_metadata() ::
    #{ 'allowAdvancedCorrect' => binary(),
       'allowCorrect' => binary(),
       'enableSignWithNotary' => binary()
     }.

encode(#{ 'allowAdvancedCorrect' := AllowAdvancedCorrect,
          'allowCorrect' := AllowCorrect,
          'enableSignWithNotary' := EnableSignWithNotary
        }) ->
    #{ 'allowAdvancedCorrect' => AllowAdvancedCorrect,
       'allowCorrect' => AllowCorrect,
       'enableSignWithNotary' => EnableSignWithNotary
     }.
