-module(swagger_bulk_envelopes_api).

-export([bulk_envelopes_get_bulk_envelopes_batch_id/3, bulk_envelopes_get_bulk_envelopes_batch_id/4,
         bulk_envelopes_get_envelopes_bulk/2, bulk_envelopes_get_envelopes_bulk/3]).

-define(BASE_URL, "/restapi").

%% @doc Gets the status of a specified bulk send operation.
%% Retrieves the status information of a specified bulk recipient batch, which is a set of envelopes sent from a single bulk recipient file.
-spec bulk_envelopes_get_bulk_envelopes_batch_id(ctx:ctx(), binary(), binary()) -> {ok, swagger_bulk_envelope_status:swagger_bulk_envelope_status(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
bulk_envelopes_get_bulk_envelopes_batch_id(Ctx, AccountId, BatchId) ->
    bulk_envelopes_get_bulk_envelopes_batch_id(Ctx, AccountId, BatchId, #{}).

-spec bulk_envelopes_get_bulk_envelopes_batch_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_bulk_envelope_status:swagger_bulk_envelope_status(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
bulk_envelopes_get_bulk_envelopes_batch_id(Ctx, AccountId, BatchId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/bulk_envelopes/", BatchId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'include', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets status information about bulk recipient batches.
%% Retrieves status information about all bulk recipient batches. A bulk recipient batch is a set of envelopes sent from a single bulk recipient file.  The response includes information about each bulk recipient batch, including the `batchId` property, which can be used to retrieve a more detailed status of individual bulk recipient batches. The response also includes information about the envelopes sent with bulk recipient batches.
-spec bulk_envelopes_get_envelopes_bulk(ctx:ctx(), binary()) -> {ok, swagger_bulk_envelopes:swagger_bulk_envelopes(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
bulk_envelopes_get_envelopes_bulk(Ctx, AccountId) ->
    bulk_envelopes_get_envelopes_bulk(Ctx, AccountId, #{}).

-spec bulk_envelopes_get_envelopes_bulk(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_bulk_envelopes:swagger_bulk_envelopes(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
bulk_envelopes_get_envelopes_bulk(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/bulk_envelopes"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'include', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


