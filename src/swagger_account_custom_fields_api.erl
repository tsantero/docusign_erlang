-module(swagger_account_custom_fields_api).

-export([account_custom_fields_delete_account_custom_fields/3, account_custom_fields_delete_account_custom_fields/4,
         account_custom_fields_get_account_custom_fields/2, account_custom_fields_get_account_custom_fields/3,
         account_custom_fields_post_account_custom_fields/3, account_custom_fields_post_account_custom_fields/4,
         account_custom_fields_put_account_custom_fields/4, account_custom_fields_put_account_custom_fields/5]).

-define(BASE_URL, "/restapi").

%% @doc Delete an existing account custom field.
-spec account_custom_fields_delete_account_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_delete_account_custom_fields(Ctx, AccountId, CustomFieldId) ->
    account_custom_fields_delete_account_custom_fields(Ctx, AccountId, CustomFieldId, #{}).

-spec account_custom_fields_delete_account_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_delete_account_custom_fields(Ctx, AccountId, CustomFieldId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/custom_fields/", CustomFieldId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['apply_to_templates'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of custom fields associated with the account.
%% Retrieves a list of envelope custom fields associated with the account. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. The list custom field lets the sender select the value of the field from a list you provide.
-spec account_custom_fields_get_account_custom_fields(ctx:ctx(), binary()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_get_account_custom_fields(Ctx, AccountId) ->
    account_custom_fields_get_account_custom_fields(Ctx, AccountId, #{}).

-spec account_custom_fields_get_account_custom_fields(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_get_account_custom_fields(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates an acount custom field.
-spec account_custom_fields_post_account_custom_fields(ctx:ctx(), binary()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_post_account_custom_fields(Ctx, AccountId) ->
    account_custom_fields_post_account_custom_fields(Ctx, AccountId, #{}).

-spec account_custom_fields_post_account_custom_fields(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_post_account_custom_fields(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/custom_fields"],
    QS = lists:flatten([])++swagger_utils:optional_params(['apply_to_templates'], _OptionalParams),
    Headers = [],
    Body1 = CustomField,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates an existing account custom field.
-spec account_custom_fields_put_account_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_put_account_custom_fields(Ctx, AccountId, CustomFieldId) ->
    account_custom_fields_put_account_custom_fields(Ctx, AccountId, CustomFieldId, #{}).

-spec account_custom_fields_put_account_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_account_custom_fields:swagger_account_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_custom_fields_put_account_custom_fields(Ctx, AccountId, CustomFieldId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/custom_fields/", CustomFieldId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['apply_to_templates'], _OptionalParams),
    Headers = [],
    Body1 = CustomField,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


