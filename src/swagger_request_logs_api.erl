-module(swagger_request_logs_api).

-export([a_pi_request_log_delete_request_logs/1, a_pi_request_log_delete_request_logs/2,
         a_pi_request_log_get_request_log/2, a_pi_request_log_get_request_log/3,
         a_pi_request_log_get_request_log_settings/1, a_pi_request_log_get_request_log_settings/2,
         a_pi_request_log_get_request_logs/1, a_pi_request_log_get_request_logs/2,
         a_pi_request_log_put_request_log_settings/2, a_pi_request_log_put_request_log_settings/3]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the request log files.
%% Deletes the request log files.
-spec a_pi_request_log_delete_request_logs(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_delete_request_logs(Ctx) ->
    a_pi_request_log_delete_request_logs(Ctx, #{}).

-spec a_pi_request_log_delete_request_logs(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_delete_request_logs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/diagnostics/request_logs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a request logging log file.
%% Retrieves information for a single log entry.  **Request** The `requestLogfId` property can be retrieved by getting the list of log entries. The Content-Transfer-Encoding header can be set to base64 to retrieve the API request/response as base 64 string. Otherwise the bytes of the request/response are returned.  **Response** If the Content-Transfer-Encoding header was set to base64, the log is returned as a base64 string.
-spec a_pi_request_log_get_request_log(ctx:ctx(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_log(Ctx, RequestLogId) ->
    a_pi_request_log_get_request_log(Ctx, RequestLogId, #{}).

-spec a_pi_request_log_get_request_log(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_log(Ctx, RequestLogId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/diagnostics/request_logs/", RequestLogId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the API request logging settings.
%% Retrieves the current API request logging setting for the user and remaining log entries.  **Response** The response includes the current API request logging setting for the user, along with the maximum log entries and remaining log entries.
-spec a_pi_request_log_get_request_log_settings(ctx:ctx()) -> {ok, swagger_request_logs:swagger_request_logs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_log_settings(Ctx) ->
    a_pi_request_log_get_request_log_settings(Ctx, #{}).

-spec a_pi_request_log_get_request_log_settings(ctx:ctx(), maps:map()) -> {ok, swagger_request_logs:swagger_request_logs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_log_settings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/diagnostics/settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the API request logging log files.
%% Retrieves a list of log entries as a JSON or xml object or as a zip file containing the entries.  If the Accept header is set to application/zip, the response is a zip file containing individual text files, each representing an API request.  If the Accept header is set to `application/json` or `application/xml`, the response returns list of log entries in either JSON or XML. An example JSON response body is shown below. 
-spec a_pi_request_log_get_request_logs(ctx:ctx()) -> {ok, swagger_api_request_logs_result:swagger_api_request_logs_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_logs(Ctx) ->
    a_pi_request_log_get_request_logs(Ctx, #{}).

-spec a_pi_request_log_get_request_logs(ctx:ctx(), maps:map()) -> {ok, swagger_api_request_logs_result:swagger_api_request_logs_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_get_request_logs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/diagnostics/request_logs"],
    QS = lists:flatten([])++swagger_utils:optional_params(['encoding'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Enables or disables API request logging for troubleshooting.
%% Enables or disables API request logging for troubleshooting.  When enabled (`apiRequestLogging` is **true**), REST API requests and responses for the user are added to a log. A log can have up to 50 requests/responses and the current number of log entries can be determined by getting the settings. Logging is automatically disabled when the log limit of 50 is reached.  You can call [Diagnostics::getRequestLog ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/get) or [Diagnostics::listRequestLogs](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/list) to download the log files (individually or as a zip file). Call [Diagnostics::deleteRequestLogs ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/delete) to clear the log by deleting current entries.  Private information, such as passwords and integrator key information, which is normally located in the call header is omitted from the request/response log.  API request logging only captures requests from the authenticated user. Any call that does not authenticate the user and resolve a userId is not logged. 
-spec a_pi_request_log_put_request_log_settings(ctx:ctx()) -> {ok, swagger_request_logs:swagger_request_logs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_put_request_log_settings(Ctx) ->
    a_pi_request_log_put_request_log_settings(Ctx, #{}).

-spec a_pi_request_log_put_request_log_settings(ctx:ctx(), maps:map()) -> {ok, swagger_request_logs:swagger_request_logs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi_request_log_put_request_log_settings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/diagnostics/settings"],
    QS = [],
    Headers = [],
    Body1 = RequestLogs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


