-module(swagger_billing_plan_update_response).

-export([encode/1]).

-export_type([swagger_billing_plan_update_response/0]).

-type swagger_billing_plan_update_response() ::
    #{ 'accountPaymentMethod' => binary(),
       'billingPlanPreview' => swagger_billing_plan_preview:swagger_billing_plan_preview(),
       'currencyCode' => binary(),
       'includedSeats' => binary(),
       'paymentCycle' => binary(),
       'paymentMethod' => binary(),
       'planId' => binary(),
       'planName' => binary()
     }.

encode(#{ 'accountPaymentMethod' := AccountPaymentMethod,
          'billingPlanPreview' := BillingPlanPreview,
          'currencyCode' := CurrencyCode,
          'includedSeats' := IncludedSeats,
          'paymentCycle' := PaymentCycle,
          'paymentMethod' := PaymentMethod,
          'planId' := PlanId,
          'planName' := PlanName
        }) ->
    #{ 'accountPaymentMethod' => AccountPaymentMethod,
       'billingPlanPreview' => BillingPlanPreview,
       'currencyCode' => CurrencyCode,
       'includedSeats' => IncludedSeats,
       'paymentCycle' => PaymentCycle,
       'paymentMethod' => PaymentMethod,
       'planId' => PlanId,
       'planName' => PlanName
     }.
