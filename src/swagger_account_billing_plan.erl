-module(swagger_account_billing_plan).

-export([encode/1]).

-export_type([swagger_account_billing_plan/0]).

-type swagger_account_billing_plan() ::
    #{ 'addOns' => list(),
       'canCancelRenewal' => binary(),
       'canUpgrade' => binary(),
       'currencyCode' => binary(),
       'enableSupport' => binary(),
       'includedSeats' => binary(),
       'incrementalSeats' => binary(),
       'isDowngrade' => binary(),
       'otherDiscountPercent' => binary(),
       'paymentCycle' => binary(),
       'paymentMethod' => binary(),
       'perSeatPrice' => binary(),
       'planClassification' => binary(),
       'planFeatureSets' => list(),
       'planId' => binary(),
       'planName' => binary(),
       'renewalStatus' => binary(),
       'seatDiscounts' => list(),
       'supportIncidentFee' => binary(),
       'supportPlanFee' => binary()
     }.

encode(#{ 'addOns' := AddOns,
          'canCancelRenewal' := CanCancelRenewal,
          'canUpgrade' := CanUpgrade,
          'currencyCode' := CurrencyCode,
          'enableSupport' := EnableSupport,
          'includedSeats' := IncludedSeats,
          'incrementalSeats' := IncrementalSeats,
          'isDowngrade' := IsDowngrade,
          'otherDiscountPercent' := OtherDiscountPercent,
          'paymentCycle' := PaymentCycle,
          'paymentMethod' := PaymentMethod,
          'perSeatPrice' := PerSeatPrice,
          'planClassification' := PlanClassification,
          'planFeatureSets' := PlanFeatureSets,
          'planId' := PlanId,
          'planName' := PlanName,
          'renewalStatus' := RenewalStatus,
          'seatDiscounts' := SeatDiscounts,
          'supportIncidentFee' := SupportIncidentFee,
          'supportPlanFee' := SupportPlanFee
        }) ->
    #{ 'addOns' => AddOns,
       'canCancelRenewal' => CanCancelRenewal,
       'canUpgrade' => CanUpgrade,
       'currencyCode' => CurrencyCode,
       'enableSupport' => EnableSupport,
       'includedSeats' => IncludedSeats,
       'incrementalSeats' => IncrementalSeats,
       'isDowngrade' => IsDowngrade,
       'otherDiscountPercent' => OtherDiscountPercent,
       'paymentCycle' => PaymentCycle,
       'paymentMethod' => PaymentMethod,
       'perSeatPrice' => PerSeatPrice,
       'planClassification' => PlanClassification,
       'planFeatureSets' => PlanFeatureSets,
       'planId' => PlanId,
       'planName' => PlanName,
       'renewalStatus' => RenewalStatus,
       'seatDiscounts' => SeatDiscounts,
       'supportIncidentFee' => SupportIncidentFee,
       'supportPlanFee' => SupportPlanFee
     }.
