-module(swagger_provisioning_information).

-export([encode/1]).

-export_type([swagger_provisioning_information/0]).

-type swagger_provisioning_information() ::
    #{ 'defaultConnectionId' => binary(),
       'defaultPlanId' => binary(),
       'distributorCode' => binary(),
       'distributorPassword' => binary(),
       'passwordRuleText' => binary(),
       'planPromotionText' => binary(),
       'purchaseOrderOrPromAllowed' => binary()
     }.

encode(#{ 'defaultConnectionId' := DefaultConnectionId,
          'defaultPlanId' := DefaultPlanId,
          'distributorCode' := DistributorCode,
          'distributorPassword' := DistributorPassword,
          'passwordRuleText' := PasswordRuleText,
          'planPromotionText' := PlanPromotionText,
          'purchaseOrderOrPromAllowed' := PurchaseOrderOrPromAllowed
        }) ->
    #{ 'defaultConnectionId' => DefaultConnectionId,
       'defaultPlanId' => DefaultPlanId,
       'distributorCode' => DistributorCode,
       'distributorPassword' => DistributorPassword,
       'passwordRuleText' => PasswordRuleText,
       'planPromotionText' => PlanPromotionText,
       'purchaseOrderOrPromAllowed' => PurchaseOrderOrPromAllowed
     }.
