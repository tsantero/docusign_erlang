-module(swagger_billing_plan).

-export([encode/1]).

-export_type([swagger_billing_plan/0]).

-type swagger_billing_plan() ::
    #{ 'appStoreProducts' => list(),
       'currencyPlanPrices' => list(),
       'enableSupport' => binary(),
       'includedSeats' => binary(),
       'otherDiscountPercent' => binary(),
       'paymentCycle' => binary(),
       'paymentMethod' => binary(),
       'perSeatPrice' => binary(),
       'planClassification' => binary(),
       'planFeatureSets' => list(),
       'planId' => binary(),
       'planName' => binary(),
       'seatDiscounts' => list(),
       'supportIncidentFee' => binary(),
       'supportPlanFee' => binary()
     }.

encode(#{ 'appStoreProducts' := AppStoreProducts,
          'currencyPlanPrices' := CurrencyPlanPrices,
          'enableSupport' := EnableSupport,
          'includedSeats' := IncludedSeats,
          'otherDiscountPercent' := OtherDiscountPercent,
          'paymentCycle' := PaymentCycle,
          'paymentMethod' := PaymentMethod,
          'perSeatPrice' := PerSeatPrice,
          'planClassification' := PlanClassification,
          'planFeatureSets' := PlanFeatureSets,
          'planId' := PlanId,
          'planName' := PlanName,
          'seatDiscounts' := SeatDiscounts,
          'supportIncidentFee' := SupportIncidentFee,
          'supportPlanFee' := SupportPlanFee
        }) ->
    #{ 'appStoreProducts' => AppStoreProducts,
       'currencyPlanPrices' => CurrencyPlanPrices,
       'enableSupport' => EnableSupport,
       'includedSeats' => IncludedSeats,
       'otherDiscountPercent' => OtherDiscountPercent,
       'paymentCycle' => PaymentCycle,
       'paymentMethod' => PaymentMethod,
       'perSeatPrice' => PerSeatPrice,
       'planClassification' => PlanClassification,
       'planFeatureSets' => PlanFeatureSets,
       'planId' => PlanId,
       'planName' => PlanName,
       'seatDiscounts' => SeatDiscounts,
       'supportIncidentFee' => SupportIncidentFee,
       'supportPlanFee' => SupportPlanFee
     }.
