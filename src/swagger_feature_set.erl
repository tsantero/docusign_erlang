-module(swagger_feature_set).

-export([encode/1]).

-export_type([swagger_feature_set/0]).

-type swagger_feature_set() ::
    #{ 'currencyFeatureSetPrices' => list(),
       'envelopeFee' => binary(),
       'featureSetId' => binary(),
       'fixedFee' => binary(),
       'is21CFRPart11' => binary(),
       'isActive' => binary(),
       'isEnabled' => binary(),
       'name' => binary(),
       'seatFee' => binary()
     }.

encode(#{ 'currencyFeatureSetPrices' := CurrencyFeatureSetPrices,
          'envelopeFee' := EnvelopeFee,
          'featureSetId' := FeatureSetId,
          'fixedFee' := FixedFee,
          'is21CFRPart11' := Is21CFRPart11,
          'isActive' := IsActive,
          'isEnabled' := IsEnabled,
          'name' := Name,
          'seatFee' := SeatFee
        }) ->
    #{ 'currencyFeatureSetPrices' => CurrencyFeatureSetPrices,
       'envelopeFee' => EnvelopeFee,
       'featureSetId' => FeatureSetId,
       'fixedFee' => FixedFee,
       'is21CFRPart11' => Is21CFRPart11,
       'isActive' => IsActive,
       'isEnabled' => IsEnabled,
       'name' => Name,
       'seatFee' => SeatFee
     }.
