-module(swagger_billing_charge_response).

-export([encode/1]).

-export_type([swagger_billing_charge_response/0]).

-type swagger_billing_charge_response() ::
    #{ 'billingChargeItems' => list()
     }.

encode(#{ 'billingChargeItems' := BillingChargeItems
        }) ->
    #{ 'billingChargeItems' => BillingChargeItems
     }.
