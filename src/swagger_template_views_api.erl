-module(swagger_template_views_api).

-export([views_post_template_edit_view/4, views_post_template_edit_view/5]).

-define(BASE_URL, "/restapi").

%% @doc Provides a URL to start an edit view of the Template UI
-spec views_post_template_edit_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_template_edit_view(Ctx, AccountId, TemplateId) ->
    views_post_template_edit_view(Ctx, AccountId, TemplateId, #{}).

-spec views_post_template_edit_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_template_edit_view(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/views/edit"],
    QS = [],
    Headers = [],
    Body1 = ReturnUrlRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


