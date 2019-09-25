-module(swagger_billing_plans_response).

-export([encode/1]).

-export_type([swagger_billing_plans_response/0]).

-type swagger_billing_plans_response() ::
    #{ 'billingPlans' => list()
     }.

encode(#{ 'billingPlans' := BillingPlans
        }) ->
    #{ 'billingPlans' => BillingPlans
     }.
