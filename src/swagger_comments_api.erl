-module(swagger_comments_api).

-export([comments_get_comments_transcript/3, comments_get_comments_transcript/4,
         comments_post_envelope_comments/4, comments_post_envelope_comments/5]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec comments_get_comments_transcript(ctx:ctx(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
comments_get_comments_transcript(Ctx, AccountId, EnvelopeId) ->
    comments_get_comments_transcript(Ctx, AccountId, EnvelopeId, #{}).

-spec comments_get_comments_transcript(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
comments_get_comments_transcript(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/comments/transcript"],
    QS = lists:flatten([])++swagger_utils:optional_params(['encoding'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec comments_post_envelope_comments(ctx:ctx(), binary(), binary()) -> {ok, swagger_comment_history_result:swagger_comment_history_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
comments_post_envelope_comments(Ctx, AccountId, EnvelopeId) ->
    comments_post_envelope_comments(Ctx, AccountId, EnvelopeId, #{}).

-spec comments_post_envelope_comments(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_comment_history_result:swagger_comment_history_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
comments_post_envelope_comments(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/comments"],
    QS = [],
    Headers = [],
    Body1 = CommentsPublish,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


