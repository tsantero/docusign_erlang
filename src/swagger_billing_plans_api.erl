-module(swagger_billing_plans_api).

-export([billing_plan_get_billing_plan/2, billing_plan_get_billing_plan/3,
         billing_plan_get_credit_card_info/2, billing_plan_get_credit_card_info/3,
         billing_plan_put_billing_plan/3, billing_plan_put_billing_plan/4,
         billing_plans_get_billing_plan/2, billing_plans_get_billing_plan/3,
         billing_plans_get_billing_plans/1, billing_plans_get_billing_plans/2,
         purchased_envelopes_put_purchased_envelopes/3, purchased_envelopes_put_purchased_envelopes/4]).

-define(BASE_URL, "/restapi").

%% @doc Get Account Billing Plan
%% Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. You can exclude this information from the response by adding the appropriate optional query string and setting it to **false**.  Response  The response returns the billing plan information, including the currency code, for the plan. The `billingPlan` and `succesorPlans` property values are the same as those shown in the [Billing::getBillingPlan](https://developers.docusign.com/esign-rest-api/reference/Billing/BillingPlans/get) reference. the `billingAddress` and `creditCardInformation` property values are the same as those shown in the [Billing::updatePlan](https://developers.docusign.com/esign-rest-api/reference/Billing/BillingPlans/update) reference.  **Note**: When credit card number information displays, a mask is applied to the response so that only the last 4 digits of the card number are visible. 
-spec billing_plan_get_billing_plan(ctx:ctx(), binary()) -> {ok, swagger_billing_plans:swagger_billing_plans(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_get_billing_plan(Ctx, AccountId) ->
    billing_plan_get_billing_plan(Ctx, AccountId, #{}).

-spec billing_plan_get_billing_plan(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_plans:swagger_billing_plans(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_get_billing_plan(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_plan"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_credit_card_information', 'include_metadata', 'include_successor_plans'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get credit card information
%% This method returns information about a credit card associated with an account.
-spec billing_plan_get_credit_card_info(ctx:ctx(), binary()) -> {ok, swagger_credit_card_information:swagger_credit_card_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_get_credit_card_info(Ctx, AccountId) ->
    billing_plan_get_credit_card_info(Ctx, AccountId, #{}).

-spec billing_plan_get_credit_card_info(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_credit_card_information:swagger_credit_card_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_get_credit_card_info(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_plan/credit_card"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the account billing plan.
%% Updates the billing plan information, billing address, and credit card information for the specified account.
-spec billing_plan_put_billing_plan(ctx:ctx(), binary()) -> {ok, swagger_billing_plan_update_response:swagger_billing_plan_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_put_billing_plan(Ctx, AccountId) ->
    billing_plan_put_billing_plan(Ctx, AccountId, #{}).

-spec billing_plan_put_billing_plan(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_plan_update_response:swagger_billing_plan_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plan_put_billing_plan(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/billing_plan"],
    QS = lists:flatten([])++swagger_utils:optional_params(['preview_billing_plan'], _OptionalParams),
    Headers = [],
    Body1 = BillingPlanInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the billing plan details.
%% Retrieves the billing plan details for the specified billing plan ID.
-spec billing_plans_get_billing_plan(ctx:ctx(), binary()) -> {ok, swagger_billing_plan_response:swagger_billing_plan_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plans_get_billing_plan(Ctx, BillingPlanId) ->
    billing_plans_get_billing_plan(Ctx, BillingPlanId, #{}).

-spec billing_plans_get_billing_plan(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_plan_response:swagger_billing_plan_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plans_get_billing_plan(Ctx, BillingPlanId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/billing_plans/", BillingPlanId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the list of available billing plans.
%% Retrieves a list of the billing plans associated with a distributor.
-spec billing_plans_get_billing_plans(ctx:ctx()) -> {ok, swagger_billing_plans_response:swagger_billing_plans_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plans_get_billing_plans(Ctx) ->
    billing_plans_get_billing_plans(Ctx, #{}).

-spec billing_plans_get_billing_plans(ctx:ctx(), maps:map()) -> {ok, swagger_billing_plans_response:swagger_billing_plans_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_plans_get_billing_plans(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/billing_plans"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reserverd: Purchase additional envelopes.
%% Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.
-spec purchased_envelopes_put_purchased_envelopes(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
purchased_envelopes_put_purchased_envelopes(Ctx, AccountId) ->
    purchased_envelopes_put_purchased_envelopes(Ctx, AccountId, #{}).

-spec purchased_envelopes_put_purchased_envelopes(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
purchased_envelopes_put_purchased_envelopes(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/billing_plan/purchased_envelopes"],
    QS = [],
    Headers = [],
    Body1 = PurchasedEnvelopesInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


