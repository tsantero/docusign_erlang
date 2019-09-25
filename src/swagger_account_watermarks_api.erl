-module(swagger_account_watermarks_api).

-export([watermark_get_watermark/2, watermark_get_watermark/3,
         watermark_preview_put_watermark_preview/3, watermark_preview_put_watermark_preview/4,
         watermark_put_watermark/3, watermark_put_watermark/4]).

-define(BASE_URL, "/restapi").

%% @doc Get watermark information.
-spec watermark_get_watermark(ctx:ctx(), binary()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_get_watermark(Ctx, AccountId) ->
    watermark_get_watermark(Ctx, AccountId, #{}).

-spec watermark_get_watermark(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_get_watermark(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/watermark"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get watermark preview.
-spec watermark_preview_put_watermark_preview(ctx:ctx(), binary()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_preview_put_watermark_preview(Ctx, AccountId) ->
    watermark_preview_put_watermark_preview(Ctx, AccountId, #{}).

-spec watermark_preview_put_watermark_preview(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_preview_put_watermark_preview(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/watermark/preview"],
    QS = [],
    Headers = [],
    Body1 = AccountWatermarks,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update watermark information.
-spec watermark_put_watermark(ctx:ctx(), binary()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_put_watermark(Ctx, AccountId) ->
    watermark_put_watermark(Ctx, AccountId, #{}).

-spec watermark_put_watermark(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_watermarks:swagger_account_watermarks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
watermark_put_watermark(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/watermark"],
    QS = [],
    Headers = [],
    Body1 = AccountWatermarks,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


