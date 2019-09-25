-module(swagger_notary_journals_api).

-export([notary_journals_get_notary_journals/1, notary_journals_get_notary_journals/2]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec notary_journals_get_notary_journals(ctx:ctx()) -> {ok, swagger_notary_journal_list:swagger_notary_journal_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notary_journals_get_notary_journals(Ctx) ->
    notary_journals_get_notary_journals(Ctx, #{}).

-spec notary_journals_get_notary_journals(ctx:ctx(), maps:map()) -> {ok, swagger_notary_journal_list:swagger_notary_journal_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notary_journals_get_notary_journals(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/current_user/notary/journals"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'search_text', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


