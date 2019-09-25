-module(swagger_new_account_summary).

-export([encode/1]).

-export_type([swagger_new_account_summary/0]).

-type swagger_new_account_summary() ::
    #{ 'accountId' => binary(),
       'accountIdGuid' => binary(),
       'accountName' => binary(),
       'apiPassword' => binary(),
       'baseUrl' => binary(),
       'billingPlanPreview' => swagger_billing_plan_preview:swagger_billing_plan_preview(),
       'userId' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'accountIdGuid' := AccountIdGuid,
          'accountName' := AccountName,
          'apiPassword' := ApiPassword,
          'baseUrl' := BaseUrl,
          'billingPlanPreview' := BillingPlanPreview,
          'userId' := UserId
        }) ->
    #{ 'accountId' => AccountId,
       'accountIdGuid' => AccountIdGuid,
       'accountName' => AccountName,
       'apiPassword' => ApiPassword,
       'baseUrl' => BaseUrl,
       'billingPlanPreview' => BillingPlanPreview,
       'userId' => UserId
     }.
