-module(swagger_feature_available_metadata).

-export([encode/1]).

-export_type([swagger_feature_available_metadata/0]).

-type swagger_feature_available_metadata() ::
    #{ 'availabilty' => binary(),
       'featureName' => binary()
     }.

encode(#{ 'availabilty' := Availabilty,
          'featureName' := FeatureName
        }) ->
    #{ 'availabilty' => Availabilty,
       'featureName' => FeatureName
     }.
