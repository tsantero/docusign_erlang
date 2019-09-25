-module(swagger_plan_information).

-export([encode/1]).

-export_type([swagger_plan_information/0]).

-type swagger_plan_information() ::
    #{ 'addOns' => list(),
       'currencyCode' => binary(),
       'freeTrialDaysOverride' => binary(),
       'planFeatureSets' => list(),
       'planId' => binary(),
       'recipientDomains' => list()
     }.

encode(#{ 'addOns' := AddOns,
          'currencyCode' := CurrencyCode,
          'freeTrialDaysOverride' := FreeTrialDaysOverride,
          'planFeatureSets' := PlanFeatureSets,
          'planId' := PlanId,
          'recipientDomains' := RecipientDomains
        }) ->
    #{ 'addOns' => AddOns,
       'currencyCode' => CurrencyCode,
       'freeTrialDaysOverride' => FreeTrialDaysOverride,
       'planFeatureSets' => PlanFeatureSets,
       'planId' => PlanId,
       'recipientDomains' => RecipientDomains
     }.
