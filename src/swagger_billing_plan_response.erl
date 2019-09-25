-module(swagger_billing_plan_response).

-export([encode/1]).

-export_type([swagger_billing_plan_response/0]).

-type swagger_billing_plan_response() ::
    #{ 'billingPlan' => swagger_billing_plan:swagger_billing_plan(),
       'successorPlans' => list()
     }.

encode(#{ 'billingPlan' := BillingPlan,
          'successorPlans' := SuccessorPlans
        }) ->
    #{ 'billingPlan' => BillingPlan,
       'successorPlans' => SuccessorPlans
     }.
