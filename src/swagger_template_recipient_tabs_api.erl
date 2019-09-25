-module(swagger_template_recipient_tabs_api).

-export([recipients_delete_template_recipient_tabs/5, recipients_delete_template_recipient_tabs/6,
         recipients_get_template_recipient_tabs/4, recipients_get_template_recipient_tabs/5,
         recipients_post_template_recipient_tabs/5, recipients_post_template_recipient_tabs/6,
         recipients_put_template_recipient_tabs/5, recipients_put_template_recipient_tabs/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the tabs associated with a recipient in a template.
%% Deletes one or more tabs associated with a recipient in a template.
-spec recipients_delete_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_delete_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_delete_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the tabs information for a signer or sign-in-person recipient in a template.
%% Gets the tabs information for a signer or sign-in-person recipient in a template.
-spec recipients_get_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_get_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_get_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/tabs"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_anchor_tab_locations', 'include_metadata'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds tabs for a recipient.
%% Adds one or more tabs for a recipient.
-spec recipients_post_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_post_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_post_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the tabs for a recipient.
%% Updates one or more tabs for a recipient in a template.
-spec recipients_put_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_put_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_put_template_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipient_tabs(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


