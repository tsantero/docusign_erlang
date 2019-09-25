-module(swagger_payments_api).

-export([billing_payments_get_payment/3, billing_payments_get_payment/4,
         billing_payments_get_payment_list/2, billing_payments_get_payment_list/3,
         billing_payments_post_payment/3, billing_payments_post_payment/4]).

-define(BASE_URL, "/restapi").

%% @doc Gets billing payment information for a specific payment.
%% Retrieves the information for a specified payment.   Privileges required: account administrator 
-spec billing_payments_get_payment(ctx:ctx(), binary(), binary()) -> {ok, swagger_payments:swagger_payments(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_get_payment(Ctx, AccountId, PaymentId) ->
    billing_payments_get_payment(Ctx, AccountId, PaymentId, #{}).

-spec billing_payments_get_payment(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_payments:swagger_payments(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_get_payment(Ctx, AccountId, PaymentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_payments/", PaymentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets payment information for one or more payments.
%% Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator 
-spec billing_payments_get_payment_list(ctx:ctx(), binary()) -> {ok, swagger_billing_payments_response:swagger_billing_payments_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_get_payment_list(Ctx, AccountId) ->
    billing_payments_get_payment_list(Ctx, AccountId, #{}).

-spec billing_payments_get_payment_list(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_payments_response:swagger_billing_payments_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_get_payment_list(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_payments"],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Posts a payment to a past due invoice.
%% Posts a payment to a past due invoice.  This method can only be used if the `paymentAllowed` value for a past due invoice is true. This can be determined calling [Billing::listInvoicesPastDue](https://developers.docusign.com/esign-rest-api/reference/Billing/Invoices/listPastDue).  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the `nextUri` and `previousUri` properties are not returned.  Privileges required: account administrator 
-spec billing_payments_post_payment(ctx:ctx(), binary()) -> {ok, swagger_billing_payment_response:swagger_billing_payment_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_post_payment(Ctx, AccountId) ->
    billing_payments_post_payment(Ctx, AccountId, #{}).

-spec billing_payments_post_payment(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_payment_response:swagger_billing_payment_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_payments_post_payment(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/billing_payments"],
    QS = [],
    Headers = [],
    Body1 = BillingPaymentRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


