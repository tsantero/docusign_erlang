-module(swagger_template_custom_fields_api).

-export([custom_fields_delete_template_custom_fields/4, custom_fields_delete_template_custom_fields/5,
         custom_fields_get_template_custom_fields/3, custom_fields_get_template_custom_fields/4,
         custom_fields_post_template_custom_fields/4, custom_fields_post_template_custom_fields/5,
         custom_fields_put_template_custom_fields/4, custom_fields_put_template_custom_fields/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes envelope custom fields in a template.
%% Deletes envelope custom fields in a template.
-spec custom_fields_delete_template_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_delete_template_custom_fields(Ctx, AccountId, TemplateId) ->
    custom_fields_delete_template_custom_fields(Ctx, AccountId, TemplateId, #{}).

-spec custom_fields_delete_template_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_delete_template_custom_fields(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the custom document fields from a template.
%% Retrieves the custom document field information from an existing template.
-spec custom_fields_get_template_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_get_template_custom_fields(Ctx, AccountId, TemplateId) ->
    custom_fields_get_template_custom_fields(Ctx, AccountId, TemplateId, #{}).

-spec custom_fields_get_template_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_get_template_custom_fields(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates custom document fields in an existing template document.
%% Creates custom document fields in an existing template document.
-spec custom_fields_post_template_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_post_template_custom_fields(Ctx, AccountId, TemplateId) ->
    custom_fields_post_template_custom_fields(Ctx, AccountId, TemplateId, #{}).

-spec custom_fields_post_template_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_post_template_custom_fields(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates envelope custom fields in a template.
%% Updates the custom fields in a template.  Each custom field used in a template must have a unique name.
-spec custom_fields_put_template_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_put_template_custom_fields(Ctx, AccountId, TemplateId) ->
    custom_fields_put_template_custom_fields(Ctx, AccountId, TemplateId, #{}).

-spec custom_fields_put_template_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_custom_fields:swagger_template_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_put_template_custom_fields(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


