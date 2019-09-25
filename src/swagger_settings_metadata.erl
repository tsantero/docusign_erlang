-module(swagger_settings_metadata).

-export([encode/1]).

-export_type([swagger_settings_metadata/0]).

-type swagger_settings_metadata() ::
    #{ 'is21CFRPart11' => binary(),
       'options' => list(),
       'rights' => binary(),
       'uiHint' => binary(),
       'uiOrder' => binary(),
       'uiType' => binary()
     }.

encode(#{ 'is21CFRPart11' := Is21CFRPart11,
          'options' := Options,
          'rights' := Rights,
          'uiHint' := UiHint,
          'uiOrder' := UiOrder,
          'uiType' := UiType
        }) ->
    #{ 'is21CFRPart11' => Is21CFRPart11,
       'options' => Options,
       'rights' => Rights,
       'uiHint' => UiHint,
       'uiOrder' => UiOrder,
       'uiType' => UiType
     }.
