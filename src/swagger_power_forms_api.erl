-module(swagger_power_forms_api).

-export([power_forms_delete_power_form/3, power_forms_delete_power_form/4,
         power_forms_delete_power_forms_list/3, power_forms_delete_power_forms_list/4,
         power_forms_get_power_form/3, power_forms_get_power_form/4,
         power_forms_get_power_forms_list/2, power_forms_get_power_forms_list/3,
         power_forms_get_power_forms_senders/2, power_forms_get_power_forms_senders/3,
         power_forms_post_power_form/3, power_forms_post_power_form/4,
         power_forms_put_power_form/4, power_forms_put_power_form/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a PowerForm.
%% This method deletes a PowerForm.
-spec power_forms_delete_power_form(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_delete_power_form(Ctx, AccountId, PowerFormId) ->
    power_forms_delete_power_form(Ctx, AccountId, PowerFormId, #{}).

-spec power_forms_delete_power_form(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_delete_power_form(Ctx, AccountId, PowerFormId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms/", PowerFormId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes one or more PowerForms.
%% This method deletes one or more PowerForms. The request body takes an array of PowerForm objects that are deleted based on the `powerFormId`.
-spec power_forms_delete_power_forms_list(ctx:ctx(), binary()) -> {ok, swagger_power_forms_response:swagger_power_forms_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_delete_power_forms_list(Ctx, AccountId) ->
    power_forms_delete_power_forms_list(Ctx, AccountId, #{}).

-spec power_forms_delete_power_forms_list(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_power_forms_response:swagger_power_forms_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_delete_power_forms_list(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms"],
    QS = [],
    Headers = [],
    Body1 = PowerFormsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a single PowerForm.
%% This method returns detailed information about a specific PowerForm.
-spec power_forms_get_power_form(ctx:ctx(), binary(), binary()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_form(Ctx, AccountId, PowerFormId) ->
    power_forms_get_power_form(Ctx, AccountId, PowerFormId, #{}).

-spec power_forms_get_power_form(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_form(Ctx, AccountId, PowerFormId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms/", PowerFormId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a list of PowerForms.
%% This method returns a list of PowerForms that are available to the user.
-spec power_forms_get_power_forms_list(ctx:ctx(), binary()) -> {ok, swagger_power_forms_response:swagger_power_forms_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_forms_list(Ctx, AccountId) ->
    power_forms_get_power_forms_list(Ctx, AccountId, #{}).

-spec power_forms_get_power_forms_list(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_power_forms_response:swagger_power_forms_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_forms_list(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms"],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'order', 'order_by', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets PowerForm senders.
%% This method returns a list of users who have sent PowerForms.
-spec power_forms_get_power_forms_senders(ctx:ctx(), binary()) -> {ok, swagger_power_form_senders_response:swagger_power_form_senders_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_forms_senders(Ctx, AccountId) ->
    power_forms_get_power_forms_senders(Ctx, AccountId, #{}).

-spec power_forms_get_power_forms_senders(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_power_form_senders_response:swagger_power_form_senders_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_forms_senders(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms/senders"],
    QS = lists:flatten([])++swagger_utils:optional_params(['start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a new PowerForm.
%% This method creates a new PowerForm.   You create a PowerForm from an existing DocuSign [template](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create), based on the `templateId` in the request body.   PowerForms that you create from a template are referred to as web PowerForms.   **Note**: The RADmin console also supports creating a PowerForm by uploading a PDF file that has active form fields (referred to as a PDF PowerForm). However, PDF PowerForms are deprecated and are not supported in the API.  **Note**: A PowerForm can have only one sender. If you need to associate multiple senders with a PowerForm, create multiple copies of the PowerForm by using the same template (one copy for each sender). By default, the sender is the PowerForm Administrator who creates the PowerForm.    ### Signing Modes  You can use one of the following signing modes for a PowerForm:   **`email`**  This mode verifies the recipient's identity by using email authentication before the recipient can sign a document. The recipient enters their email address on the landing page and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code for the PowerForm to the recipient. If the recipient does not provide a valid email address, they do not receive the email message containing the access code and are not able to open and sign the document.  Alternatively, you can make the process easier for signers by using email authentication only and omitting the access code. To do this, you append the `activateonly` flag to the PowerForm URL and set it to true by passing in the value `1`.  When the flag is active, the first recipient receives an email with a link that initiates the signing session without having to enter access code.  Example: `activateonly=1`  **`direct`**  This mode does not require any verification. After a recipient enters their email address on the landing page and clicks **Begin Signing**, a new browser tab opens and the recipient can immediately begin the signing process.  Because the `direct` signing mode does not verify the recipient's identity by using email authentication, we strongly recommend that you use this mode only when the PowerForm is accessible behind a secure portal where the recipient's identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).    **Note**: In the account settings, `enablePowerFormDirect` must be **true** to use `direct` as the `signingMode`.
-spec power_forms_post_power_form(ctx:ctx(), binary()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_post_power_form(Ctx, AccountId) ->
    power_forms_post_power_form(Ctx, AccountId, #{}).

-spec power_forms_post_power_form(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_post_power_form(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms"],
    QS = [],
    Headers = [],
    Body1 = PowerForms,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates an existing PowerForm.
%% This method updates an existing PowerForm.
-spec power_forms_put_power_form(ctx:ctx(), binary(), binary()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_put_power_form(Ctx, AccountId, PowerFormId) ->
    power_forms_put_power_form(Ctx, AccountId, PowerFormId, #{}).

-spec power_forms_put_power_form(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_power_forms:swagger_power_forms(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_put_power_form(Ctx, AccountId, PowerFormId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms/", PowerFormId, ""],
    QS = [],
    Headers = [],
    Body1 = PowerForms,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


