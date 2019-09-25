-module(swagger_connect_events_api).

-export([connect_failures_delete_connect_failure_log/3, connect_failures_delete_connect_failure_log/4,
         connect_failures_get_connect_logs/2, connect_failures_get_connect_logs/3,
         connect_log_delete_connect_log/3, connect_log_delete_connect_log/4,
         connect_log_delete_connect_logs/2, connect_log_delete_connect_logs/3,
         connect_log_get_connect_log/3, connect_log_get_connect_log/4,
         connect_log_get_connect_logs/2, connect_log_get_connect_logs/3,
         connect_publish_put_connect_retry/3, connect_publish_put_connect_retry/4,
         connect_publish_put_connect_retry_by_envelope/3, connect_publish_put_connect_retry_by_envelope/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a Connect failure log entry.
%% Deletes the Connect failure log information for the specified entry.
-spec connect_failures_delete_connect_failure_log(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_failures_delete_connect_failure_log(Ctx, AccountId, FailureId) ->
    connect_failures_delete_connect_failure_log(Ctx, AccountId, FailureId, #{}).

-spec connect_failures_delete_connect_failure_log(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_failures_delete_connect_failure_log(Ctx, AccountId, FailureId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/connect/failures/", FailureId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the Connect failure log information.
%% Retrieves the Connect failure log information. You can use this log to determine which envelopes failed to post, in order to create a republish request.
-spec connect_failures_get_connect_logs(ctx:ctx(), binary()) -> {ok, swagger_connect_events:swagger_connect_events(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_failures_get_connect_logs(Ctx, AccountId) ->
    connect_failures_get_connect_logs(Ctx, AccountId, #{}).

-spec connect_failures_get_connect_logs(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_events:swagger_connect_events(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_failures_get_connect_logs(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect/failures"],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes a specified Connect log entry.
%% Deletes a specified entry from the Connect Log. 
-spec connect_log_delete_connect_log(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_delete_connect_log(Ctx, AccountId, LogId) ->
    connect_log_delete_connect_log(Ctx, AccountId, LogId, #{}).

-spec connect_log_delete_connect_log(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_delete_connect_log(Ctx, AccountId, LogId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/connect/logs/", LogId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of Connect log entries.
%% Retrieves a list of connect log entries for your account.  ###### Note: The `enableLog` property in the Connect configuration must be set to **true** to enable logging. If logging is not enabled, then no log entries are recorded.
-spec connect_log_delete_connect_logs(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_delete_connect_logs(Ctx, AccountId) ->
    connect_log_delete_connect_logs(Ctx, AccountId, #{}).

-spec connect_log_delete_connect_logs(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_delete_connect_logs(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/connect/logs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the specified Connect log entry.
%% Retrieves the specified Connect log entry for your account.  ###### Note: The `enableLog` setting in the Connect configuration must be set to true to enable logging. If logging is not enabled, then no log entries are recorded. 
-spec connect_log_get_connect_log(ctx:ctx(), binary(), binary()) -> {ok, swagger_connect_log:swagger_connect_log(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_get_connect_log(Ctx, AccountId, LogId) ->
    connect_log_get_connect_log(Ctx, AccountId, LogId, #{}).

-spec connect_log_get_connect_log(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_connect_log:swagger_connect_log(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_get_connect_log(Ctx, AccountId, LogId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect/logs/", LogId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['additional_info'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the Connect log.
%% Retrieves a list of connect log entries for your account.  ###### Note: The `enableLog` setting in the Connect configuration must be set to true to enable logging. If logging is not enabled, then no log entries are recorded. 
-spec connect_log_get_connect_logs(ctx:ctx(), binary()) -> {ok, swagger_connect_events:swagger_connect_events(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_get_connect_logs(Ctx, AccountId) ->
    connect_log_get_connect_logs(Ctx, AccountId, #{}).

-spec connect_log_get_connect_logs(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_events:swagger_connect_events(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_log_get_connect_logs(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect/logs"],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Republishes Connect information for multiple envelopes.
%% Republishes Connect information for the  specified set of envelopes. The primary use is to republish Connect post failures by including envelope IDs for the envelopes that failed to post in the request. The list of envelope IDs that failed to post correctly can be retrieved by calling to [Connect::listEventLogs](https://developers.docusign.com/esign-rest-api/reference/Connect/ConnectEvents/list) retrieve the failure log. 
-spec connect_publish_put_connect_retry(ctx:ctx(), binary()) -> {ok, swagger_connect_failure_results:swagger_connect_failure_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_publish_put_connect_retry(Ctx, AccountId) ->
    connect_publish_put_connect_retry(Ctx, AccountId, #{}).

-spec connect_publish_put_connect_retry(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_failure_results:swagger_connect_failure_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_publish_put_connect_retry(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/connect/envelopes/retry_queue"],
    QS = [],
    Headers = [],
    Body1 = ConnectFailureFilter,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Republishes Connect information for the specified envelope.
%% Republishes Connect information for the specified envelope.
-spec connect_publish_put_connect_retry_by_envelope(ctx:ctx(), binary(), binary()) -> {ok, swagger_connect_failure_results:swagger_connect_failure_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_publish_put_connect_retry_by_envelope(Ctx, AccountId, EnvelopeId) ->
    connect_publish_put_connect_retry_by_envelope(Ctx, AccountId, EnvelopeId, #{}).

-spec connect_publish_put_connect_retry_by_envelope(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_connect_failure_results:swagger_connect_failure_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_publish_put_connect_retry_by_envelope(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/connect/envelopes/", EnvelopeId, "/retry_queue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


