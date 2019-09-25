-module(swagger_invoices_api).

-export([billing_invoices_get_billing_invoice/3, billing_invoices_get_billing_invoice/4,
         billing_invoices_get_billing_invoices/2, billing_invoices_get_billing_invoices/3,
         billing_invoices_get_billing_invoices_past_due/2, billing_invoices_get_billing_invoices_past_due/3]).

-define(BASE_URL, "/restapi").

%% @doc Retrieves a billing invoice.
%% Retrieves the specified invoice.   ###### Note: If the `pdfAvailable` property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the `Accept` property in the header to `Accept: application/pdf`.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as 'unlimited' or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different `chargeName` property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | ID Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | 
-spec billing_invoices_get_billing_invoice(ctx:ctx(), binary(), binary()) -> {ok, swagger_invoices:swagger_invoices(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoice(Ctx, AccountId, InvoiceId) ->
    billing_invoices_get_billing_invoice(Ctx, AccountId, InvoiceId, #{}).

-spec billing_invoices_get_billing_invoice(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_invoices:swagger_invoices(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoice(Ctx, AccountId, InvoiceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_invoices/", InvoiceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a List of Billing Invoices
%% Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 
-spec billing_invoices_get_billing_invoices(ctx:ctx(), binary()) -> {ok, swagger_billing_invoices_response:swagger_billing_invoices_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoices(Ctx, AccountId) ->
    billing_invoices_get_billing_invoices(Ctx, AccountId, #{}).

-spec billing_invoices_get_billing_invoices(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_invoices_response:swagger_billing_invoices_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoices(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_invoices"],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a list of past due invoices.
%% Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator
-spec billing_invoices_get_billing_invoices_past_due(ctx:ctx(), binary()) -> {ok, swagger_billing_invoices_summary:swagger_billing_invoices_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoices_past_due(Ctx, AccountId) ->
    billing_invoices_get_billing_invoices_past_due(Ctx, AccountId, #{}).

-spec billing_invoices_get_billing_invoices_past_due(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_billing_invoices_summary:swagger_billing_invoices_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
billing_invoices_get_billing_invoices_past_due(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/billing_invoices_past_due"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


