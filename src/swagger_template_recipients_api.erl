-module(swagger_template_recipients_api).

-export([recipients_delete_template_recipient/5, recipients_delete_template_recipient/6,
         recipients_delete_template_recipients/4, recipients_delete_template_recipients/5,
         recipients_get_template_recipients/3, recipients_get_template_recipients/4,
         recipients_post_template_recipients/4, recipients_post_template_recipients/5,
         recipients_put_template_recipients/4, recipients_put_template_recipients/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the specified recipient file from a template.
%% Deletes the specified recipient file from the specified template.
-spec recipients_delete_template_recipient(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipient(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_delete_template_recipient(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_delete_template_recipient(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipient(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, ""],
    QS = [],
    Headers = [],
    Body1 = TemplateRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes recipients from a template.
%% Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.
-spec recipients_delete_template_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipients(Ctx, AccountId, TemplateId) ->
    recipients_delete_template_recipients(Ctx, AccountId, TemplateId, #{}).

-spec recipients_delete_template_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipients(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients"],
    QS = [],
    Headers = [],
    Body1 = TemplateRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets recipient information from a template.
%% Retrieves the information for all recipients in the specified template.
-spec recipients_get_template_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipients(Ctx, AccountId, TemplateId) ->
    recipients_get_template_recipients(Ctx, AccountId, TemplateId, #{}).

-spec recipients_get_template_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipients(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_anchor_tab_locations', 'include_extended', 'include_tabs'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds tabs for a recipient.
%% Adds one or more recipients to a template.
-spec recipients_post_template_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_template_recipients(Ctx, AccountId, TemplateId) ->
    recipients_post_template_recipients(Ctx, AccountId, TemplateId, #{}).

-spec recipients_post_template_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipients:swagger_template_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_template_recipients(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['resend_envelope'], _OptionalParams),
    Headers = [],
    Body1 = TemplateRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates recipients in a template.
%% Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.
-spec recipients_put_template_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_recipients_update_summary:swagger_recipients_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipients(Ctx, AccountId, TemplateId) ->
    recipients_put_template_recipients(Ctx, AccountId, TemplateId, #{}).

-spec recipients_put_template_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_recipients_update_summary:swagger_recipients_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipients(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['resend_envelope'], _OptionalParams),
    Headers = [],
    Body1 = TemplateRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


